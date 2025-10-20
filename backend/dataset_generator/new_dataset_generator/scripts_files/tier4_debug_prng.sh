# scripts/tier4_debug_prng.sh
#!/bin/bash
################################################################################
# Debug PRNG low assembly count
################################################################################

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║  DEBUGGING: PRNG (360/490 = 73.5%)                            ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}"
echo ""

echo -e "${YELLOW}📁 Source files:${NC}"
ls -1 crypto_sources/prng/*.c
echo ""

src_count=$(ls -1 crypto_sources/prng/*.c 2>/dev/null | wc -l)
asm_count=$(find compiled_binaries -path "*/prng/*" -name "*.s" 2>/dev/null | wc -l)

echo -e "${YELLOW}📊 Statistics:${NC}"
echo "  Source files: $src_count"
echo "  Assembly files: $asm_count"
echo "  Expected: 490 (7 non-AVR × 65 + 7 AVR × 5)"
echo "  Missing: $((490 - asm_count))"
echo ""

echo -e "${YELLOW}🔬 Testing compilation of each file:${NC}"
echo ""

for file in crypto_sources/prng/*.c; do
    filename=$(basename "$file")
    file_base=$(basename "$file" .c)
    
    echo -e "${BLUE}Testing: $filename${NC}"
    
    # Count assemblies for this file
    asm_for_file=$(find compiled_binaries -name "${file_base}_*.s" 2>/dev/null | wc -l)
    
    # Determine if AVR-specific
    if [[ "$filename" == *"_avr"* ]]; then
        expected=5
        echo "  Type: AVR-specific (expected 5 assemblies)"
    else
        expected=65
        echo "  Type: Non-AVR (expected 65 assemblies)"
    fi
    
    echo "  Current assemblies: $asm_for_file / $expected"
    
    if [ $asm_for_file -lt $expected ]; then
        echo -e "  ${RED}⚠️  MISSING $(($expected - $asm_for_file)) assemblies${NC}"
        
        # Test x86-64 GCC
        echo -n "  Test x86-64 GCC: "
        if gcc -m64 -O0 -S -o /tmp/test_x86.s "$file" 2>/dev/null; then
            echo -e "${GREEN}✅${NC}"
        else
            echo -e "${RED}❌${NC}"
            echo "    Error:"
            gcc -m64 -O0 -S -o /tmp/test_x86.s "$file" 2>&1 | head -3 | sed 's/^/    /'
        fi
        
        # Test ARM GCC
        echo -n "  Test ARM GCC: "
        if arm-linux-gnueabihf-gcc -O0 -S -o /tmp/test_arm.s "$file" 2>/dev/null; then
            echo -e "${GREEN}✅${NC}"
        else
            echo -e "${RED}❌${NC}"
            echo "    Error:"
            arm-linux-gnueabihf-gcc -O0 -S -o /tmp/test_arm.s "$file" 2>&1 | head -3 | sed 's/^/    /'
        fi
        
        # Test Clang x86-64
        echo -n "  Test Clang x86-64: "
        if clang -m64 -O0 -S -o /tmp/test_clang.s "$file" 2>/dev/null; then
            echo -e "${GREEN}✅${NC}"
        else
            echo -e "${RED}❌${NC}"
            echo "    Error:"
            clang -m64 -O0 -S -o /tmp/test_clang.s "$file" 2>&1 | head -3 | sed 's/^/    /'
        fi
    else
        echo -e "  ${GREEN}✅ All assemblies present${NC}"
    fi
    
    echo ""
done

echo -e "${YELLOW}🔍 Missing assemblies by architecture:${NC}"
echo ""

for file in crypto_sources/prng/*.c; do
    file_base=$(basename "$file" .c)
    
    # Determine expected per architecture
    if [[ "$file_base" == *"_avr"* ]]; then
        continue  # Skip AVR files for non-AVR archs
    fi
    
    # Check each non-AVR architecture
    for arch in arm arm64 x86-64 mips mipsel riscv64; do
        asm_count=$(find compiled_binaries/$arch/prng -name "${file_base}_*.s" 2>/dev/null | wc -l)
        expected=10  # 5 opts × 2 compilers
        
        if [ $asm_count -lt $expected ]; then
            echo "  $file_base [$arch]: $asm_count/$expected (missing $((expected - asm_count)))"
        fi
    done
done

echo ""
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "${YELLOW}Summary:${NC}"
echo "  This script identified which PRNG files are failing to compile."
echo "  Review the errors above to determine the fix needed."
echo ""