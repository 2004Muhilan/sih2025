# scripts/tier5_compile_non_crypto.sh
#!/bin/bash
################################################################################
# TIER 5: Compile Non-Crypto Files
# Compiles all non_crypto/*.c files to assembly across all architectures
################################################################################

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

CRYPTO_SOURCES="crypto_sources/non_crypto"
OUTPUT_DIR="compiled_binaries"
OPT_LEVELS=("O0" "O1" "O2" "O3" "Os")

COMPILED_COUNT=0
ERROR_COUNT=0
SKIPPED_COUNT=0

################################################################################
# Architecture configurations
################################################################################

declare -A ARCH_GCC
declare -A ARCH_GCC_FLAGS
declare -A ARCH_CLANG
declare -A ARCH_CLANG_FLAGS

ARCH_GCC["arm"]="arm-linux-gnueabihf-gcc"
ARCH_GCC_FLAGS["arm"]=""
ARCH_CLANG["arm"]="clang"
ARCH_CLANG_FLAGS["arm"]="-target arm-linux-gnueabihf -march=armv7-a"

ARCH_GCC["arm64"]="aarch64-linux-gnu-gcc"
ARCH_GCC_FLAGS["arm64"]=""
ARCH_CLANG["arm64"]="clang"
ARCH_CLANG_FLAGS["arm64"]="-target aarch64-linux-gnu"

ARCH_GCC["x86-64"]="gcc"
ARCH_GCC_FLAGS["x86-64"]="-m64"
ARCH_CLANG["x86-64"]="clang"
ARCH_CLANG_FLAGS["x86-64"]="-m64"

ARCH_GCC["mips"]="mips-linux-gnu-gcc"
ARCH_GCC_FLAGS["mips"]=""
ARCH_CLANG["mips"]="clang"
ARCH_CLANG_FLAGS["mips"]="-target mips-linux-gnu"

ARCH_GCC["mipsel"]="mipsel-linux-gnu-gcc"
ARCH_GCC_FLAGS["mipsel"]=""
ARCH_CLANG["mipsel"]="clang"
ARCH_CLANG_FLAGS["mipsel"]="-target mipsel-linux-gnu"

ARCH_GCC["riscv64"]="riscv64-linux-gnu-gcc"
ARCH_GCC_FLAGS["riscv64"]=""
ARCH_CLANG["riscv64"]="clang"
ARCH_CLANG_FLAGS["riscv64"]="-target riscv64-linux-gnu"

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
# Function: Compile to assembly
################################################################################
compile_to_assembly() {
    local source_file=$1
    local arch=$2
    local opt=$3
    local compiler_type=$4
    
    local compiler=""
    local flags=""
    
    if [ "$compiler_type" = "gcc" ]; then
        compiler="${ARCH_GCC[$arch]}"
        flags="${ARCH_GCC_FLAGS[$arch]}"
    else
        compiler="${ARCH_CLANG[$arch]}"
        flags="${ARCH_CLANG_FLAGS[$arch]}"
    fi
    
    if ! check_compiler "$compiler"; then
        ((SKIPPED_COUNT++))
        return 1
    fi
    
    local filename=$(basename "$source_file" .c)
    local output_subdir="${OUTPUT_DIR}/${arch}/non_crypto/${opt}/${compiler_type}"
    mkdir -p "$output_subdir"
    
    local output_asm="${output_subdir}/${filename}_${arch}_${opt}_${compiler_type}.s"
    
    # Check if already exists
    if [ -f "$output_asm" ]; then
        ((COMPILED_COUNT++))
        return 0
    fi
    
    # Compile to assembly
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
echo -e "${BLUE}║         TIER 5: NON-CRYPTO COMPILATION                         ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}"
echo ""

# Count files
TOTAL_FILES=$(find "$CRYPTO_SOURCES" -name "*.c" 2>/dev/null | wc -l)

if [ $TOTAL_FILES -eq 0 ]; then
    echo -e "${RED}❌ No C files found in $CRYPTO_SOURCES${NC}"
    exit 1
fi

echo -e "${BLUE}📁 Found $TOTAL_FILES non-crypto C files${NC}"
echo ""

# Check compilers
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

EXPECTED=$(($TOTAL_FILES * 65))
echo -e "${YELLOW}📊 Expected: ~$EXPECTED assembly files${NC}"
echo -e "${YELLOW}⏱️  Estimated time: 1-2 minutes${NC}"
echo ""

read -p "Press Enter to start compilation..."
echo ""
echo -e "${GREEN}🚀 Compiling non-crypto files...${NC}"
echo ""

START_TIME=$(date +%s)
FILES_PROCESSED=0

# Compile all files
for source_file in $(find "$CRYPTO_SOURCES" -name "*.c" | sort); do
    ((FILES_PROCESSED++))
    
    filename=$(basename "$source_file")
    echo -e "${BLUE}📄 Processing ($FILES_PROCESSED/$TOTAL_FILES): $filename${NC}"
    
    # For each architecture
    for arch in arm arm64 x86-64 mips mipsel riscv64 avr; do
        # For each optimization
        for opt in "${OPT_LEVELS[@]}"; do
            compile_to_assembly "$source_file" "$arch" "$opt" "gcc"
            
            # Try Clang (skip AVR)
            if [ "$arch" != "avr" ]; then
                compile_to_assembly "$source_file" "$arch" "$opt" "clang"
            fi
        done
    done
    
    echo ""
done

END_TIME=$(date +%s)
DURATION=$((END_TIME - START_TIME))
MINUTES=$((DURATION / 60))
SECONDS=$((DURATION % 60))

################################################################################
# Summary
################################################################################

echo -e "${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║                    COMPILATION SUMMARY                         ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "${GREEN}✅ Successfully compiled: $COMPILED_COUNT assembly files${NC}"
echo -e "${YELLOW}⏭️  Skipped (missing compiler): $SKIPPED_COUNT${NC}"
echo -e "${RED}❌ Failed: $ERROR_COUNT${NC}"
echo -e "${BLUE}⏱️  Time taken: ${MINUTES}m ${SECONDS}s${NC}"
echo ""

if [ $EXPECTED -gt 0 ]; then
    SUCCESS_RATE=$((COMPILED_COUNT * 100 / EXPECTED))
    echo -e "${BLUE}📊 Success rate: ${SUCCESS_RATE}%${NC}"
fi

echo ""

if [ $COMPILED_COUNT -gt 0 ]; then
    echo -e "${YELLOW}📂 Sample assembly files:${NC}"
    find compiled_binaries -path "*/non_crypto/*" -name "*.s" | head -5
fi

echo ""
echo -e "${GREEN}🎉 TIER 5 NON-CRYPTO COMPILATION COMPLETE!${NC}"
echo ""
echo -e "${YELLOW}📌 NEXT STEP: Verify complete dataset${NC}"
echo -e "  python3 scripts/tier5_verify_complete_dataset.py${NC}"
echo ""