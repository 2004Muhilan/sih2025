# scripts/tier4_fix_missing_includes.py
#!/usr/bin/env python3
"""
Fix missing #include <stddef.h> in source files that use size_t
"""
from pathlib import Path
import re

def fix_file(file_path):
    """Add missing stddef.h include if size_t is used"""
    
    with open(file_path, 'r') as f:
        content = f.read()
    
    # Check if size_t is used
    if 'size_t' not in content:
        return False, "No size_t found"
    
    # Check if stddef.h is already included
    if '#include <stddef.h>' in content or '#include<stddef.h>' in content:
        return False, "stddef.h already included"
    
    # Find where to insert the include
    lines = content.split('\n')
    
    # Find the last #include line
    last_include_idx = -1
    for i, line in enumerate(lines):
        if line.strip().startswith('#include'):
            last_include_idx = i
    
    # Insert after last include, or at the beginning
    if last_include_idx >= 0:
        lines.insert(last_include_idx + 1, '#include <stddef.h>')
    else:
        # No includes found, add at the top (after any comments)
        insert_idx = 0
        for i, line in enumerate(lines):
            if line.strip() and not line.strip().startswith('//') and not line.strip().startswith('/*'):
                insert_idx = i
                break
        lines.insert(insert_idx, '#include <stddef.h>')
    
    # Write back
    new_content = '\n'.join(lines)
    
    with open(file_path, 'w') as f:
        f.write(new_content)
    
    return True, "Added stddef.h"

def main():
    print("="*70)
    print("FIXING MISSING #include <stddef.h> FOR size_t")
    print("="*70)
    
    # Target directories
    target_algos = ['hmac', 'base64', 'xor_cipher', 'rc4']
    
    fixed_count = 0
    skipped_count = 0
    
    for algo in target_algos:
        print(f"\n📁 Processing: {algo}")
        print("-"*70)
        
        algo_dir = Path(f"crypto_sources/{algo}")
        
        if not algo_dir.exists():
            print(f"  ⚠️  Directory not found: {algo_dir}")
            continue
        
        c_files = list(algo_dir.glob("*.c"))
        
        for c_file in c_files:
            fixed, message = fix_file(c_file)
            
            if fixed:
                print(f"  ✅ {c_file.name}: {message}")
                fixed_count += 1
            else:
                print(f"  ⏭️  {c_file.name}: {message}")
                skipped_count += 1
    
    print("\n" + "="*70)
    print("SUMMARY")
    print("="*70)
    print(f"✅ Fixed: {fixed_count} files")
    print(f"⏭️  Skipped: {skipped_count} files")
    
    if fixed_count > 0:
        print("\n📌 NEXT STEP: Recompile the fixed algorithms")
        print("   Run: ./scripts/tier4_recompile_fixed.sh")
    
    print("="*70)

if __name__ == "__main__":
    main()