# scripts/tier4_check_what_failed.sh
#!/bin/bash
################################################################################
# Check which specific architectures/compilers are failing
################################################################################

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║           ANALYZING COMPILATION SUCCESS BY ARCH                ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}"
echo ""

# Count assembly files per architecture
echo -e "${YELLOW}Assembly files (.s) generated per architecture:${NC}"
echo ""

printf "%-12s %8s %8s %10s %10s\n" "Architecture" "GCC" "Clang" "Total" "Expected"
echo "--------------------------------------------------------------"

TOTAL_COMPILED=0
TOTAL_EXPECTED=0

for arch in arm arm64 x86-64 mips mipsel riscv64 avr; do
    gcc_count=$(find compiled_binaries/$arch -name "*.s" -path "*/gcc/*" 2>/dev/null | wc -l)
    clang_count=$(find compiled_binaries/$arch -name "*.s" -path "*/clang/*" 2>/dev/null | wc -l)
    total=$((gcc_count + clang_count))
    
    # Expected: 10 files processed so far × 5 opts = 50 per compiler
    if [ "$arch" = "avr" ]; then
        expected=50  # Only GCC
    else
        expected=100  # GCC + Clang
    fi
    
    TOTAL_COMPILED=$((TOTAL_COMPILED + total))
    TOTAL_EXPECTED=$((TOTAL_EXPECTED + expected))
    
    if [ $total -eq 0 ]; then
        status="${RED}❌${NC}"
    elif [ $total -lt $((expected / 2)) ]; then
        status="${YELLOW}⚠️${NC}"
    else
        status="${GREEN}✅${NC}"
    fi
    
    printf "%-12s %8d %8d %10d %10d %b\n" "$arch" $gcc_count $clang_count $total $expected "$status"
done

echo "--------------------------------------------------------------"
printf "%-12s %8s %8s %10d %10d\n" "TOTAL" "" "" $TOTAL_COMPILED $TOTAL_EXPECTED

echo ""
echo -e "${BLUE}Analysis (10 files processed):${NC}"
echo "  Expected per arch: 50 (GCC) + 50 (Clang) = 100 files"
echo "  Expected for AVR: 50 (GCC only)"
echo "  Total expected: 650 files"
echo "  Total compiled: $TOTAL_COMPILED files"
echo ""

# Test one file from each failing architecture
echo -e "${YELLOW}Testing individual architectures:${NC}"
echo ""

TEST_FILE="crypto_sources/aes/aes_add_round_key.c"

# Test ARM GCC
echo "Testing ARM GCC:"
arm-linux-gnueabihf-gcc -O0 -S -o /tmp/test_arm.s "$TEST_FILE" 2>&1 | head -5
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ ARM GCC works${NC}"
else
    echo -e "${RED}❌ ARM GCC failed${NC}"
fi
echo ""

# Test AVR GCC
echo "Testing AVR GCC:"
avr-gcc -mmcu=atmega328p -O0 -S -o /tmp/test_avr.s "$TEST_FILE" 2>&1 | head -5
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ AVR GCC works${NC}"
else
    echo -e "${RED}❌ AVR GCC failed${NC}"
fi
echo ""

# Test RISC-V GCC
echo "Testing RISC-V GCC:"
riscv64-linux-gnu-gcc -O0 -S -o /tmp/test_riscv.s "$TEST_FILE" 2>&1 | head -5
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ RISC-V GCC works${NC}"
else
    echo -e "${RED}❌ RISC-V GCC failed${NC}"
fi
echo ""

echo -e "${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║                         DIAGNOSIS                              ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}"
echo ""

if [ $TOTAL_COMPILED -ge 550 ]; then
    echo -e "${GREEN}✅ GOOD: Most architectures working (>85% success)${NC}"
    echo "   Continue compilation - failures are acceptable"
elif [ $TOTAL_COMPILED -ge 400 ]; then
    echo -e "${YELLOW}⚠️  MARGINAL: Some architectures failing (~60-85% success)${NC}"
    echo "   Can continue, but investigate failures"
else
    echo -e "${RED}❌ CRITICAL: Too many failures (<60% success)${NC}"
    echo "   Need to fix compiler issues"
fi

echo ""