# scripts/tier4_compile_tinycrypt_hmac_prng.sh
#!/bin/bash
# Compile tinycrypt_hmac_prng.c with TinyCrypt include path

source_file="crypto_sources/prng/tinycrypt_hmac_prng.c"
tinycrypt_include="-I crypto_libraries/tinycrypt/lib/include"
archs="arm arm64 x86-64 mips mipsel riscv64 avr"
opts="O0 O1 O2 O3 Os"

compiled=0

for arch in $archs; do
    for opt in $opts; do
        mkdir -p "compiled_binaries/$arch/prng/$opt/gcc"
        
        # Determine compiler and flags per arch
        case $arch in
            arm) compiler="arm-linux-gnueabihf-gcc" ;;
            arm64) compiler="aarch64-linux-gnu-gcc" ;;
            x86-64) compiler="gcc -m64" ;;
            mips) compiler="mips-linux-gnu-gcc" ;;
            mipsel) compiler="mipsel-linux-gnu-gcc" ;;
            riscv64) compiler="riscv64-linux-gnu-gcc" ;;
            avr) compiler="avr-gcc -mmcu=atmega328p" ;;
        esac
        
        # GCC
        if $compiler $tinycrypt_include -$opt -S -o "compiled_binaries/$arch/prng/$opt/gcc/tinycrypt_hmac_prng_${arch}_${opt}_gcc.s" "$source_file" -w 2>/dev/null; then
            ((compiled++))
        fi
        
        # Clang (skip AVR)
        if [ "$arch" != "avr" ]; then
            mkdir -p "compiled_binaries/$arch/prng/$opt/clang"
            if clang -target ${arch}-linux-gnu $tinycrypt_include -$opt -S -o "compiled_binaries/$arch/prng/$opt/clang/tinycrypt_hmac_prng_${arch}_${opt}_clang.s" "$source_file" -w 2>/dev/null; then
                ((compiled++))
            fi
        fi
    done
done

echo "✅ Compiled $compiled assemblies for tinycrypt_hmac_prng.c"