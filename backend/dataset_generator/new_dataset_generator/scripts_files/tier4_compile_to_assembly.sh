# scripts/tier4_compile_to_assembly.sh
#!/bin/bash
################################################################################
# TIER 4: COMPILATION TO ASSEMBLY (FIXED)
# Generates .s assembly files for feature extraction
# - 7 architectures
# - 5 optimization levels
# - 2 compilers (GCC + Clang)
################################################################################

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# Directories
CRYPTO_SOURCES="crypto_sources"
OUTPUT_DIR="compiled_binaries"

# Optimization levels
OPT_LEVELS=("O0" "O1" "O2" "O3" "Os")

# Counters
TOTAL_FILES=0
COMPILED_COUNT=0
SKIPPED_COUNT=0
ERROR_COUNT=0

################################################################################
# Architecture configurations (FIXED)
################################################################################

declare -A ARCH_GCC
declare -A ARCH_GCC_FLAGS
declare -A ARCH_CLANG
declare -A ARCH_CLANG_FLAGS

# ARM (32-bit) - FIXED: No float-abi flags
ARCH_GCC["arm"]="arm-linux-gnueabihf-gcc"
ARCH_GCC_FLAGS["arm"]=""
ARCH_CLANG["arm"]="clang"
ARCH_CLANG_FLAGS["arm"]="-target arm-linux-gnueabihf -march=armv7-a"

# ARM64 (64-bit)
ARCH_GCC["arm64"]="aarch64-linux-gnu-gcc"
ARCH_GCC_FLAGS["arm64"]=""
ARCH_CLANG["arm64"]="clang"
ARCH_CLANG_FLAGS["arm64"]="-target aarch64-linux-gnu"

# x86-64
ARCH_GCC["x86-64"]="gcc"
ARCH_GCC_FLAGS["x86-64"]="-m64"
ARCH_CLANG["x86-64"]="clang"
ARCH_CLANG_FLAGS["x86-64"]="-m64"

# MIPS (big-endian)
ARCH_GCC["mips"]="mips-linux-gnu-gcc"
ARCH_GCC_FLAGS["mips"]=""
ARCH_CLANG["mips"]="clang"
ARCH_CLANG_FLAGS["mips"]="-target mips-linux-gnu"

# MIPSEL (little-endian)
ARCH_GCC["mipsel"]="mipsel-linux-gnu-gcc"
ARCH_GCC_FLAGS["mipsel"]=""
ARCH_CLANG["mipsel"]="clang"
ARCH_CLANG_FLAGS["mipsel"]="-target mipsel-linux-gnu"

# RISC-V 64-bit
ARCH_GCC["riscv64"]="riscv64-linux-gnu-gcc"
ARCH_GCC_FLAGS["riscv64"]=""
ARCH_CLANG["riscv64"]="clang"
ARCH_CLANG_FLAGS["riscv64"]="-target riscv64-linux-gnu"

# AVR (8-bit) - Will work after installing avr-libc
ARCH_GCC["avr"]="avr-gcc"
ARCH_GCC_FLAGS["avr"]="-mmcu=atmega328p"
ARCH_CLANG["avr"]=""
ARCH_CLANG_FLAGS["avr"]=""

################################################################################
# Function: Check if compiler exists
################################################################################
check_compiler() {
    local compiler=$1
    if [ -z "$compiler" ]; then
        return 1
    fi
    if command -v "$compiler" &> /dev/null; then
        return 0
    else
        return 1
    fi
}

################################################################################
# Function: Compile to assembly file
################################################################################
compile_to_assembly() {
    local source_file=$1
    local arch=$2
    local opt=$3
    local compiler_type=$4
    
    # Get compiler and flags
    local compiler=""
    local flags=""
    
    if [ "$compiler_type" = "gcc" ]; then
        compiler="${ARCH_GCC[$arch]}"
        flags="${ARCH_GCC_FLAGS[$arch]}"
    else
        compiler="${ARCH_CLANG[$arch]}"
        flags="${ARCH_CLANG_FLAGS[$arch]}"
    fi
    
    # Check if compiler exists
    if ! check_compiler "$compiler"; then
        ((SKIPPED_COUNT++))
        return 1
    fi
    
    # Extract algorithm and filename
    local algo=$(basename $(dirname "$source_file"))
    local filename=$(basename "$source_file" .c)
    
    # Create output directory
    local output_subdir="${OUTPUT_DIR}/${arch}/${algo}/${opt}/${compiler_type}"
    mkdir -p "$output_subdir"
    
    # Output assembly file (.s extension)
    local output_asm="${output_subdir}/${filename}_${arch}_${opt}_${compiler_type}.s"
    
    # Check if already compiled
    if [ -f "$output_asm" ]; then
        ((COMPILED_COUNT++))
        return 0
    fi
    
    # Compile to ASSEMBLY (-S flag)
    if $compiler $flags -$opt -S -o "$output_asm" "$source_file" -w 2>/dev/null; then
        ((COMPILED_COUNT++))
        return 0
    else
        ((ERROR_COUNT++))
        return 1
    fi
}

################################################################################
# Main
################################################################################

echo -e "${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║       TIER 4: ASSEMBLY GENERATION FOR FEATURE EXTRACTION      ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}"
echo ""

# Check if avr-libc is installed
echo -e "${YELLOW}🔍 Checking dependencies...${NC}"
if dpkg -l | grep -q avr-libc; then
    echo -e "  ${GREEN}✅ avr-libc installed${NC}"
else
    echo -e "  ${RED}❌ avr-libc NOT installed${NC}"
    echo -e "  ${YELLOW}Install with: sudo apt install avr-libc${NC}"
    echo ""
    read -p "Continue anyway? (y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 1
    fi
fi
echo ""

TOTAL_FILES=$(find "$CRYPTO_SOURCES" -name "*.c" | wc -l)
echo -e "${BLUE}📁 Found $TOTAL_FILES C source files${NC}"
echo ""

echo -e "${YELLOW}🔍 Checking compilers...${NC}"
for arch in arm arm64 x86-64 mips mipsel riscv64 avr; do
    gcc_compiler="${ARCH_GCC[$arch]}"
    clang_compiler="${ARCH_CLANG[$arch]}"
    
    echo -n "  $arch: "
    
    if check_compiler "$gcc_compiler"; then
        echo -n "GCC ✅ "
    else
        echo -n "GCC ❌ "
    fi
    
    if [ -n "$clang_compiler" ] && check_compiler "$clang_compiler"; then
        echo "Clang ✅"
    else
        echo "Clang ❌"
    fi
done
echo ""

# Calculate expected files
# 126 files × 7 archs × 5 opts × 2 compilers (minus AVR clang) = ~8190 assembly files
EXPECTED_BINARIES=$((TOTAL_FILES * 7 * 5 * 2 - TOTAL_FILES * 5))  # Subtract AVR+Clang
echo -e "${YELLOW}📊 Expected: ~$EXPECTED_BINARIES assembly files (.s)${NC}"
echo -e "${YELLOW}⏱️  Estimated time: 10-20 minutes${NC}"
echo ""

read -p "Press Enter to start compilation..."
echo ""
echo -e "${GREEN}🚀 Generating assembly files...${NC}"
echo ""

START_TIME=$(date +%s)
FILES_PROCESSED=0

# Iterate through all C files
for source_file in $(find "$CRYPTO_SOURCES" -name "*.c" | sort); do
    ((FILES_PROCESSED++))
    
    # Show progress every 10 files
    if [ $((FILES_PROCESSED % 10)) -eq 0 ] || [ $FILES_PROCESSED -eq 1 ]; then
        PERCENTAGE=$((FILES_PROCESSED * 100 / TOTAL_FILES))
        echo -e "${BLUE}📊 Progress: $FILES_PROCESSED/$TOTAL_FILES ($PERCENTAGE%) | ✅ $COMPILED_COUNT | ❌ $ERROR_COUNT | ⏭️  $SKIPPED_COUNT${NC}"
    fi
    
    # For each architecture
    for arch in arm arm64 x86-64 mips mipsel riscv64 avr; do
        # For each optimization level
        for opt in "${OPT_LEVELS[@]}"; do
            # Try GCC
            compile_to_assembly "$source_file" "$arch" "$opt" "gcc"
            
            # Try Clang (skip for AVR)
            if [ "$arch" != "avr" ]; then
                compile_to_assembly "$source_file" "$arch" "$opt" "clang"
            fi
        done
    done
done

# Final progress
echo -e "${BLUE}📊 Progress: $FILES_PROCESSED/$TOTAL_FILES (100%) | ✅ $COMPILED_COUNT | ❌ $ERROR_COUNT | ⏭️  $SKIPPED_COUNT${NC}"

END_TIME=$(date +%s)
DURATION=$((END_TIME - START_TIME))
MINUTES=$((DURATION / 60))
SECONDS=$((DURATION % 60))

################################################################################
# Summary
################################################################################

echo ""
echo -e "${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║                    COMPILATION SUMMARY                         ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "${GREEN}✅ Successfully compiled: $COMPILED_COUNT assembly files${NC}"
echo -e "${YELLOW}⏭️  Skipped (missing compiler): $SKIPPED_COUNT${NC}"
echo -e "${RED}❌ Failed: $ERROR_COUNT${NC}"
echo -e "${BLUE}⏱️  Time taken: ${MINUTES}m ${SECONDS}s${NC}"
echo ""

# Calculate success rate
if [ $EXPECTED_BINARIES -gt 0 ]; then
    SUCCESS_RATE=$((COMPILED_COUNT * 100 / EXPECTED_BINARIES))
    echo -e "${BLUE}📊 Success rate: ${SUCCESS_RATE}%${NC}"
    
    if [ $SUCCESS_RATE -ge 95 ]; then
        echo -e "${GREEN}🎉 EXCELLENT! Nearly perfect compilation!${NC}"
    elif [ $SUCCESS_RATE -ge 80 ]; then
        echo -e "${GREEN}✅ GOOD! Sufficient for training!${NC}"
    elif [ $SUCCESS_RATE -ge 50 ]; then
        echo -e "${YELLOW}⚠️  MARGINAL: Consider fixing failures${NC}"
    else
        echo -e "${RED}❌ INSUFFICIENT: Too many failures${NC}"
    fi
fi

echo ""

# Show sample files
if [ $COMPILED_COUNT -gt 0 ]; then
    echo -e "${YELLOW}📂 Sample assembly files:${NC}"
    find compiled_binaries -type f -name "*.s" | head -5
    echo ""
fi

echo -e "${GREEN}🎉 TIER 4 COMPLETE!${NC}"
echo ""
echo -e "${YELLOW}Next steps:${NC}"
echo -e "  1. Verify: python3 scripts/verify_compilation_status.py${NC}"
echo -e "  2. Start feature extraction from assembly files${NC}"
echo ""