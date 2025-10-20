#!/bin/bash

# Simple compilation script - one binary per architecture

SOURCES=(test_aes.c test_des.c test_rc4.c test_rsa.c test_ecc.c test_xor.c)
OUTPUT_DIR="binaries"

mkdir -p "$OUTPUT_DIR"

echo "=== Compiling Crypto Binaries ==="
echo ""

for source in "${SOURCES[@]}"; do
    algo=$(basename $source .c | sed 's/test_//')
    echo "Compiling $algo..."
    
    # ARM 32-bit
    arm-linux-gnueabi-gcc -O2 $source -o "$OUTPUT_DIR/${algo}_arm" 2>/dev/null && echo "  ✓ ARM"
    
    # ARM 64-bit
    aarch64-linux-gnu-gcc -O2 $source -o "$OUTPUT_DIR/${algo}_arm64" 2>/dev/null && echo "  ✓ ARM64"
    
    # MIPS
    mips-linux-gnu-gcc -O2 $source -o "$OUTPUT_DIR/${algo}_mips" 2>/dev/null && echo "  ✓ MIPS"
    
    # MIPSEL
    mipsel-linux-gnu-gcc -O2 $source -o "$OUTPUT_DIR/${algo}_mipsel" 2>/dev/null && echo "  ✓ MIPSEL"
    
    # RISC-V 64
    riscv64-linux-gnu-gcc -O2 $source -o "$OUTPUT_DIR/${algo}_riscv64" 2>/dev/null && echo "  ✓ RISCV64"
    
    # x86-64
    gcc -m64 -O2 $source -o "$OUTPUT_DIR/${algo}_x86-64" 2>/dev/null && echo "  ✓ x86-64"
    
    # AVR
    avr-gcc -O2 -mmcu=atmega328p $source -o "$OUTPUT_DIR/${algo}_avr" 2>/dev/null && echo "  ✓ AVR"
    
    echo ""
done

echo "✓ Compilation complete!"
echo "Binaries saved to: $OUTPUT_DIR/"
ls -lh "$OUTPUT_DIR/"