# scripts/tier4_recompile_prng_fortuna.sh
#!/bin/bash
# Recompile prng_fortuna.c after adding stddef.h

source_file="crypto_sources/prng/prng_fortuna.c"
archs="arm arm64 x86-64 mips mipsel riscv64 avr"
opts="O0 O1 O2 O3 Os"

compiled=0

for arch in $archs; do
    for opt in $opts; do
        # GCC
        mkdir -p "compiled_binaries/$arch/prng/$opt/gcc"
        if gcc -m64 -$opt -S -o "compiled_binaries/$arch/prng/$opt/gcc/prng_fortuna_${arch}_${opt}_gcc.s" "$source_file" 2>/dev/null; then
            ((compiled++))
        fi
        
        # Clang (skip AVR)
        if [ "$arch" != "avr" ]; then
            mkdir -p "compiled_binaries/$arch/prng/$opt/clang"
            if clang -m64 -$opt -S -o "compiled_binaries/$arch/prng/$opt/clang/prng_fortuna_${arch}_${opt}_clang.s" "$source_file" 2>/dev/null; then
                ((compiled++))
            fi
        fi
    done
done

echo "✅ Compiled $compiled assemblies for prng_fortuna.c"