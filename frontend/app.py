import sys
import os
from pathlib import Path
import uuid
import threading
import json
import time
from flask import Flask, request, jsonify, send_from_directory, make_response
from flask_cors import CORS

# --- Backend Integration ---
# Add the backend model directory to the Python path
backend_path = Path(__file__).parent / 'backend' / 'model' / 'new_model'
sys.path.append(str(backend_path))

# Now we can import the backend modules
try:
    from inference_pipeline import CryptoInferencePipeline
    from pdf_generator import generate_report_from_json
except ImportError as e:
    print(f"Error: Could not import backend modules. Make sure they are in {backend_path}")
    print(f"Import error: {e}")
    # Exit if we can't import the core component
    sys.exit(1)

# --- Flask App Setup ---
app = Flask(__name__, static_folder='frontend')
CORS(app) # Enable Cross-Origin Resource Sharing for the API

# Configuration
UPLOADS_FOLDER = Path(__file__).parent / 'uploads'
app.config['UPLOADS_FOLDER'] = str(UPLOADS_FOLDER)
UPLOADS_FOLDER.mkdir(exist_ok=True) # Ensure uploads directory exists

# In-memory job store (for a production environment, you'd use a database like Redis or a proper queue)
JOBS = {}

# --- Backend Initialization ---
# Initialize the pipeline once and reuse it. This is more efficient.
# NOTE: This assumes the model, scaler, and features paths are relative to the `new_model` directory.
print("Initializing Crypto Detection Pipeline...")
try:
    pipeline = CryptoInferencePipeline(
        model_path=str(backend_path / 'results' / 'best_model.pth'),
        scaler_path=str(backend_path / 'preprocessing' / 'scaler.pkl'),
        feature_cols_path=str(backend_path / 'preprocessing' / 'feature_columns.json')
    )
    print("✅ Crypto Detection Pipeline Initialized Successfully.")
except Exception as e:
    print(f"FATAL: Failed to initialize the CryptoInferencePipeline: {e}")
    pipeline = None

# --- Helper Functions ---

def is_binary_file(filepath):
    """
    Checks if a file is a recognized binary format (ELF or PE) by reading its magic number.
    """
    try:
        with open(filepath, 'rb') as f:
            header = f.read(4)
            if header == b'\x7fELF':  # ELF magic number
                return True
            if header.startswith(b'MZ'):  # PE magic number (DOS header)
                return True
        return False
    except IOError:
        return False

def format_results_for_frontend(raw_results):
    """
    Passes the key data blocks from the analysis pipeline directly to the
    frontend, which will handle the display logic.
    """
    if not raw_results:
        return {}

    # Pass the key data blocks directly
    # The frontend JS is now smart enough to parse these.
    formatted = {
        "binary_info": raw_results.get('binary_info', {}),
        "binary_classification": raw_results.get('binary_classification', {}),
        "class_distribution": raw_results.get('class_distribution', {}),
        "high_confidence_detections": raw_results.get('high_confidence_detections', []),
        "byte_entropy": raw_results.get('byte_entropy', 0),
        "raw_results": raw_results # Keep this for the JSON download
    }
    return formatted

def run_analysis(job_id, binary_path, arch=None):
    """
    This function runs in a background thread to perform the analysis.
    """
    global JOBS
    if not pipeline:
        JOBS[job_id]['status'] = 'ERROR'
        JOBS[job_id]['error'] = "Backend pipeline not initialized."
        return

    try:
        print(f"Starting analysis for job {job_id} on file {binary_path}")
        JOBS[job_id]['status'] = 'ANALYZING'
        
        # This is the call to your actual backend code
        analysis_result = pipeline.analyze_binary(str(binary_path), arch=arch)
        
        if analysis_result:
            JOBS[job_id]['status'] = 'PROCESSING' # Simulating "processing" step
            # Format the results for the frontend
            formatted_result = format_results_for_frontend(analysis_result)
            JOBS[job_id]['result'] = formatted_result
            JOBS[job_id]['status'] = 'COMPLETED'
            print(f"Analysis complete for job {job_id}")
        else:
            raise Exception("Analysis returned no result. The file may be corrupted or an unsupported format.")

    except Exception as e:
        print(f"Error during analysis for job {job_id}: {e}")
        JOBS[job_id]['status'] = 'ERROR'
        JOBS[job_id]['error'] = str(e)


# --- API Endpoints ---

@app.route('/')
def serve_index():
    """Serves the main index.html file."""
    return send_from_directory('frontend', 'index.html')

@app.route('/<path:filename>')
def serve_static_files(filename):
    """Serves other static files from the frontend directory (e.g., style.css)."""
    return send_from_directory('frontend', filename)

@app.route('/api/jobs', methods=['POST'])
def create_job():
    """
    Handles file upload, creates a new analysis job, and starts it.
    This matches the frontend's expectation.
    """
    if 'file' not in request.files:
        return jsonify({"error": "No file part"}), 400
    
    file = request.files['file']
    if file.filename == '':
        return jsonify({"error": "No selected file"}), 400

    if file and pipeline:
        job_id = str(uuid.uuid4())
        filename = file.filename
        
        # --- Architecture Detection from Filename ---
        # This is a workaround for the unreliable architecture detection on Windows
        arch = None
        fn_lower = filename.lower()
        supported_archs = ['x86-64', 'x86', 'arm64', 'arm', 'mips', 'mipsel', 'riscv64', 'avr']
        for a in supported_archs:
            if a in fn_lower:
                arch = a
                print(f"Inferred architecture from filename: {arch}")
                break
        # ------------------------------------------

        save_path = UPLOADS_FOLDER / f"{job_id}_{filename}"
        file.save(str(save_path))
        
        JOBS[job_id] = {
            "status": "UPLOADED",
            "filename": filename,
            "filepath": str(save_path), # Store the full path for later (e.g., PDF size)
            "result": None,
            "error": None
        }
        
        # --- File Type Validation ---
        if not is_binary_file(save_path):
            print(f"Job {job_id} failed: Uploaded file '{filename}' is not a valid binary.")
            JOBS[job_id]['status'] = 'ERROR'
            JOBS[job_id]['error'] = "Uploaded file is not a valid binary (e.g., ELF, PE). Please upload a compiled binary, not source code or text."
            return jsonify({"jobId": job_id})
        # --------------------------

        # Start the analysis in a background thread
        thread = threading.Thread(target=run_analysis, args=(job_id, save_path, arch))
        thread.start()
        
        return jsonify({"jobId": job_id})

    return jsonify({"error": "Server or pipeline not ready"}), 500

@app.route('/api/jobs/<job_id>/status', methods=['GET'])
def get_job_status(job_id):
    """
    Pollable endpoint for the frontend to get the status of a job.
    """
    job = JOBS.get(job_id)
    if not job:
        return jsonify({"error": "Job not found"}), 404
    
    return jsonify({
        "status": job['status'],
        "error": job['error']
    })

@app.route('/api/jobs/<job_id>/crypto-analysis', methods=['GET'])
def get_job_result(job_id):
    """
    Endpoint to get the final analysis results.
    """
    job = JOBS.get(job_id)
    if not job:
        return jsonify({"error": "Job not found"}), 404
    
    if job['status'] != 'COMPLETED':
        return jsonify({"error": "Job not complete"}), 400
        
    # The result is already formatted for the frontend
    return jsonify(job['result'])

@app.route('/api/jobs/<job_id>/pdf', methods=['GET'])
def download_pdf_report(job_id):
    """Generates and serves a PDF report for a completed job."""
    job = JOBS.get(job_id)
    if not job:
        return jsonify({"error": "Job not found"}), 404
    
    if job['status'] != 'COMPLETED':
        return jsonify({"error": "Job not complete"}), 400

    try:
        pdf_data = generate_report_from_json(job)
        response = make_response(pdf_data)
        response.headers.set('Content-Type', 'application/pdf')
        response.headers.set(
            'Content-Disposition', 'attachment', filename=f"{job['filename']}_report.pdf"
        )
        return response
    except Exception as e:
        error_message = f"Failed to generate PDF report: {e}"
        print(f"Error generating PDF for job {job_id}: {e}")
        return jsonify({"error": error_message}), 500

if __name__ == '__main__':
    # Note: The host '0.0.0.0' makes the server accessible from your local network
    app.run(host='0.0.0.0', port=5000, debug=True)