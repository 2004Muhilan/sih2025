# scripts/tier4_debug_aes_ecc.sh
#!/bin/bash
################################################################################
# Debug why AES and ECC have low assembly counts
################################################################################

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

debug_algorithm() {
    local algo=$1
    
    echo -e "${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${BLUE}║  DEBUGGING: $algo${NC}"
    echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    # List source files
    echo -e "${YELLOW}📁 Source files:${NC}"
    ls -1 crypto_sources/${algo,,}/*.c
    echo ""
    
    # Count expected vs actual
    src_count=$(ls -1 crypto_sources/${algo,,}/*.c 2>/dev/null | wc -l)
    asm_count=$(find compiled_binaries -path "*/${algo,,}/*" -name "*.s" 2>/dev/null | wc -l)
    
    echo -e "${YELLOW}📊 Statistics:${NC}"
    echo "  Source files: $src_count"
    echo "  Assembly files: $asm_count"
    echo "  Expected: ~$((src_count * 65)) (per file: 65 assemblies)"
    echo ""
    
    # Test each file
    echo -e "${YELLOW}🔬 Testing compilation of each file:${NC}"
    echo ""
    
    for file in crypto_sources/${algo,,}/*.c; do
        filename=$(basename "$file")
        echo -e "${BLUE}Testing: $filename${NC}"
        
        # Count how many assemblies exist for this file
        file_base=$(basename "$file" .c)
        asm_for_file=$(find compiled_binaries -name "${file_base}_*.s" 2>/dev/null | wc -l)
        echo "  Current assemblies: $asm_for_file / 65"
        
        # Test x86-64 GCC
        echo -n "  x86-64 GCC: "
        if gcc -m64 -O0 -S -o /tmp/test_x86.s "$file" 2>/dev/null; then
            echo -e "${GREEN}✅${NC}"
        else
            echo -e "${RED}❌${NC}"
            echo "    Error:"
            gcc -m64 -O0 -S -o /tmp/test_x86.s "$file" 2>&1 | head -3 | sed 's/^/    /'
        fi
        
        # Test ARM GCC
        echo -n "  ARM GCC: "
        if arm-linux-gnueabihf-gcc -O0 -S -o /tmp/test_arm.s "$file" 2>/dev/null; then
            echo -e "${GREEN}✅${NC}"
        else
            echo -e "${RED}❌${NC}"
            echo "    Error:"
            arm-linux-gnueabihf-gcc -O0 -S -o /tmp/test_arm.s "$file" 2>&1 | head -3 | sed 's/^/    /'
        fi
        
        # Test AVR GCC
        echo -n "  AVR GCC: "
        if avr-gcc -mmcu=atmega328p -O0 -S -o /tmp/test_avr.s "$file" 2>/dev/null; then
            echo -e "${GREEN}✅${NC}"
        else
            echo -e "${RED}❌${NC}"
            echo "    Error:"
            avr-gcc -mmcu=atmega328p -O0 -S -o /tmp/test_avr.s "$file" 2>&1 | head -3 | sed 's/^/    /'
        fi
        
        # Test Clang x86-64
        echo -n "  Clang x86-64: "
        if clang -m64 -O0 -S -o /tmp/test_clang.s "$file" 2>/dev/null; then
            echo -e "${GREEN}✅${NC}"
        else
            echo -e "${RED}❌${NC}"
            echo "    Error:"
            clang -m64 -O0 -S -o /tmp/test_clang.s "$file" 2>&1 | head -3 | sed 's/^/    /'
        fi
        
        echo ""
    done
    
    # Check which specific assemblies are missing
    echo -e "${YELLOW}🔍 Missing assemblies breakdown:${NC}"
    echo ""
    
    for file in crypto_sources/${algo,,}/*.c; do
        file_base=$(basename "$file" .c)
        
        # Check each architecture
        for arch in arm arm64 x86-64 mips mipsel riscv64 avr; do
            asm_count=$(find compiled_binaries/$arch/${algo,,} -name "${file_base}_*.s" 2>/dev/null | wc -l)
            
            if [ "$arch" = "avr" ]; then
                expected=5  # 5 opts, only GCC
            else
                expected=10  # 5 opts × 2 compilers
            fi
            
            if [ $asm_count -lt $expected ]; then
                echo "  $file_base [$arch]: $asm_count/$expected (missing $((expected - asm_count)))"
            fi
        done
    done
    
    echo ""
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo ""
}

echo -e "${GREEN}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║           DEBUGGING AES AND ECC LOW COUNTS                     ║${NC}"
echo -e "${GREEN}╚════════════════════════════════════════════════════════════════╝${NC}"
echo ""

# Debug AES
debug_algorithm "AES"

# Debug ECC
debug_algorithm "ECC"

echo -e "${GREEN}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║                     DIAGNOSIS COMPLETE                         ║${NC}"
echo -e "${GREEN}╚════════════════════════════════════════════════════════════════╝${NC}"
echo ""

echo -e "${YELLOW}Summary:${NC}"
echo "  This script identified which specific files and architectures are failing"
echo "  for AES and ECC. Review the errors above to determine the fix needed."
echo ""