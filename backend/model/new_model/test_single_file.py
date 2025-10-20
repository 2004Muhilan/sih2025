# model/new_model/test_multifunction.py
"""
Quick test for multi-function prediction
"""
from predict_assembly_functions import MultiFunctionPredictor

# Initialize
predictor = MultiFunctionPredictor(
    model_path='results/best_model.pth',
    scaler_path='preprocessing/scaler.pkl',
    feature_cols_path='preprocessing/feature_columns.json'
)

# Predict
# results = predictor.predict_file('../../dataset_generator/new_dataset_generator/compiled_binaries/arm/aes/O2/gcc/tinycrypt_aes_decrypt_arm_O2_gcc.s')
results = predictor.predict_file('test.s')

# Access programmatically
print("\nProgrammatic access:")
print("\nDetailed top-3 predictions:")
for result in results:
    print(f"\n{result['function_name']}:")
    for rank, (cls, prob) in enumerate(result['top3_predictions'], 1):
        print(f"  {rank}. {cls:12s}: {prob:.1%}")