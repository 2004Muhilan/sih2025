# scripts/tier4_debug_missing_algos.py
#!/usr/bin/env python3
"""
Debug why HMAC, BASE64, XOR_CIPHER, RC4 have low/zero assembly files
"""
from pathlib import Path

def check_algorithm(algo_name):
    """Check what happened with a specific algorithm"""
    print(f"\n{'='*70}")
    print(f"DEBUGGING: {algo_name}")
    print(f"{'='*70}")
    
    # Check source files
    source_dir = Path(f"crypto_sources/{algo_name.lower()}")
    if not source_dir.exists():
        print(f"❌ Source directory not found: {source_dir}")
        return
    
    c_files = list(source_dir.glob("*.c"))
    print(f"\n📁 Source files ({len(c_files)}):")
    for f in c_files:
        print(f"  - {f.name}")
    
    # Check compiled assemblies
    compiled_dir = Path("compiled_binaries")
    asm_files = list(compiled_dir.rglob(f"*/{algo_name.lower()}/*/*.s"))
    
    print(f"\n📦 Assembly files ({len(asm_files)}):")
    if len(asm_files) == 0:
        print("  ❌ NO ASSEMBLY FILES GENERATED!")
    else:
        # Show sample
        for f in asm_files[:5]:
            print(f"  - {f}")
        if len(asm_files) > 5:
            print(f"  ... and {len(asm_files) - 5} more")
    
    # Test compilation manually
    if c_files:
        test_file = c_files[0]
        print(f"\n🔬 Testing compilation of: {test_file.name}")
        
        import subprocess
        
        # Test with x86-64 gcc
        result = subprocess.run(
            ['gcc', '-O0', '-S', '-o', '/tmp/test.s', str(test_file)],
            capture_output=True,
            text=True
        )
        
        if result.returncode == 0:
            print(f"  ✅ x86-64 GCC: SUCCESS")
        else:
            print(f"  ❌ x86-64 GCC: FAILED")
            print(f"  Error: {result.stderr[:200]}")
        
        # Test with ARM gcc
        result = subprocess.run(
            ['arm-linux-gnueabihf-gcc', '-O0', '-S', '-o', '/tmp/test_arm.s', str(test_file)],
            capture_output=True,
            text=True
        )
        
        if result.returncode == 0:
            print(f"  ✅ ARM GCC: SUCCESS")
        else:
            print(f"  ❌ ARM GCC: FAILED")
            print(f"  Error: {result.stderr[:200]}")

def main():
    print("="*70)
    print("DEBUGGING MISSING/LOW-COUNT ALGORITHMS")
    print("="*70)
    
    # Check problematic algorithms
    problematic = ['hmac', 'base64', 'xor_cipher', 'rc4']
    
    for algo in problematic:
        check_algorithm(algo)
    
    print("\n" + "="*70)
    print("DIAGNOSIS COMPLETE")
    print("="*70)

if __name__ == "__main__":
    main()