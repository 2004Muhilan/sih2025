# scripts/tier4_fix_prng.py
#!/usr/bin/env python3
"""
Fix PRNG compilation issues:
1. Add missing stddef.h to prng_fortuna.c
2. Compile tinycrypt_hmac_prng.c with TinyCrypt include path
3. Remove prng_avr.c from non-AVR architectures (duplicate)
"""
from pathlib import Path
import subprocess

def fix_prng_fortuna():
    """Add missing stddef.h include"""
    file_path = Path("crypto_sources/prng/prng_fortuna.c")
    
    if not file_path.exists():
        return False, "File not found"
    
    with open(file_path, 'r') as f:
        content = f.read()
    
    if 'size_t' not in content:
        return False, "No size_t found"
    
    if '#include <stddef.h>' in content:
        return False, "stddef.h already included"
    
    lines = content.split('\n')
    
    # Find last include
    last_include_idx = -1
    for i, line in enumerate(lines):
        if line.strip().startswith('#include'):
            last_include_idx = i
    
    if last_include_idx >= 0:
        lines.insert(last_include_idx + 1, '#include <stddef.h>')
    else:
        lines.insert(0, '#include <stddef.h>')
    
    with open(file_path, 'w') as f:
        f.write('\n'.join(lines))
    
    return True, "Added stddef.h"

def cleanup_prng_avr_duplicates():
    """Remove prng_avr assemblies from non-AVR architectures"""
    compiled_dir = Path("compiled_binaries")
    non_avr_archs = ['arm', 'arm64', 'x86-64', 'mips', 'mipsel', 'riscv64']
    
    deleted = []
    
    for arch in non_avr_archs:
        prng_avr_files = list(compiled_dir.glob(f"{arch}/prng/*/*/prng_avr_*.s"))
        
        for file_path in prng_avr_files:
            file_path.unlink()
            deleted.append(str(file_path.relative_to(compiled_dir)))
    
    return deleted

def main():
    print("="*70)
    print("FIXING PRNG COMPILATION ISSUES")
    print("="*70)
    print()
    
    # Fix 1: prng_fortuna.c
    print("📝 Fix 1: Adding stddef.h to prng_fortuna.c")
    fixed, message = fix_prng_fortuna()
    if fixed:
        print(f"  ✅ {message}")
    else:
        print(f"  ⏭️  {message}")
    print()
    
    # Fix 2: Cleanup prng_avr duplicates
    print("📝 Fix 2: Removing prng_avr duplicates from non-AVR architectures")
    deleted = cleanup_prng_avr_duplicates()
    if deleted:
        print(f"  ✅ Deleted {len(deleted)} duplicate files")
    else:
        print(f"  ⏭️  No duplicates found")
    print()
    
    print("="*70)
    print("NEXT STEPS")
    print("="*70)
    print()
    print("1. Recompile prng_fortuna.c:")
    print("   ./scripts/tier4_recompile_prng_fortuna.sh")
    print()
    print("2. Compile tinycrypt_hmac_prng.c with TinyCrypt includes:")
    print("   ./scripts/tier4_compile_tinycrypt_hmac_prng.sh")
    print()
    print("="*70)

if __name__ == "__main__":
    main()