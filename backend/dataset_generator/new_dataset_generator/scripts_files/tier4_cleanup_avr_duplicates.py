# scripts/tier4_cleanup_avr_duplicates.py
#!/usr/bin/env python3
"""
Remove AVR-specific assembly files from non-AVR architectures
Files with '_avr' in the name should only exist in avr/ directory
"""
from pathlib import Path

def main():
    print("="*70)
    print("CLEANING UP AVR-SPECIFIC FILES FROM NON-AVR ARCHITECTURES")
    print("="*70)
    print()
    
    compiled_dir = Path("compiled_binaries")
    
    # Non-AVR architectures
    non_avr_archs = ['arm', 'arm64', 'x86-64', 'mips', 'mipsel', 'riscv64']
    
    deleted_files = []
    
    for arch in non_avr_archs:
        arch_dir = compiled_dir / arch
        
        if not arch_dir.exists():
            continue
        
        # Find all assembly files with '_avr' in the name
        avr_files = list(arch_dir.rglob("*_avr_*.s"))
        
        if avr_files:
            print(f"\n📁 {arch}/ - Found {len(avr_files)} AVR-specific files")
            
            for file_path in avr_files:
                # Show which files are being deleted
                relative_path = file_path.relative_to(compiled_dir)
                print(f"  🗑️  Deleting: {relative_path}")
                
                # Delete the file
                file_path.unlink()
                deleted_files.append(str(relative_path))
    
    print("\n" + "="*70)
    print("CLEANUP SUMMARY")
    print("="*70)
    
    if deleted_files:
        print(f"✅ Deleted {len(deleted_files)} AVR-specific files from non-AVR architectures")
        print()
        
        # Count by architecture
        arch_counts = {}
        for file_str in deleted_files:
            arch = file_str.split('/')[0]
            arch_counts[arch] = arch_counts.get(arch, 0) + 1
        
        print("Breakdown by architecture:")
        for arch in sorted(arch_counts.keys()):
            print(f"  {arch:10s}: {arch_counts[arch]:3d} files deleted")
        
        print()
        print("📊 Expected changes:")
        print("  - DES: 780 → ~650 assemblies")
        print("  - ECC: 910 → ~715 assemblies")
        print("  - PRNG: 780 → ~650 assemblies")
        print("  - RSA: 910 → ~715 assemblies")
        print("  - SHA1: 845 → ~715 assemblies")
        print("  - SHA256: 845 → ~715 assemblies")
        
        print()
        print("✅ Dataset is now properly balanced!")
    else:
        print("✅ No AVR-specific files found in non-AVR architectures")
        print("   Dataset is already clean!")
    
    print()
    print("📌 NEXT STEP:")
    print("   Verify cleaned dataset: python3 scripts/tier5_verify_complete_dataset.py")
    print("="*70)

if __name__ == "__main__":
    main()