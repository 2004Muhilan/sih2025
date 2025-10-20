# scripts/tier4_compile_tinycrypt_files.sh
#!/bin/bash
################################################################################
# Compile TinyCrypt-dependent files with proper include paths
################################################################################

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

CRYPTO_SOURCES="crypto_sources"
OUTPUT_DIR="compiled_binaries"
OPT_LEVELS=("O0" "O1" "O2" "O3" "Os")

# TinyCrypt include path
TINYCRYPT_INCLUDE="-I crypto_libraries/tinycrypt/lib/include"

# Architecture configurations
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

COMPILED_COUNT=0
ERROR_COUNT=0

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
    
    if [ -z "$compiler" ] || ! command -v "$compiler" &> /dev/null; then
        return 1
    fi
    
    local algo=$(basename $(dirname "$source_file"))
    local filename=$(basename "$source_file" .c)
    local output_subdir="${OUTPUT_DIR}/${arch}/${algo}/${opt}/${compiler_type}"
    mkdir -p "$output_subdir"
    
    local output_asm="${output_subdir}/${filename}_${arch}_${opt}_${compiler_type}.s"
    
    # Remove old file if exists
    rm -f "$output_asm"
    
    # Compile with TinyCrypt include path
    if $compiler $flags $TINYCRYPT_INCLUDE -$opt -S -o "$output_asm" "$source_file" -w 2>/dev/null; then
        ((COMPILED_COUNT++))
        return 0
    else
        ((ERROR_COUNT++))
        return 1
    fi
}

echo -e "${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║         COMPILING TINYCRYPT-DEPENDENT FILES                    ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}"
echo ""

# TinyCrypt-dependent files
TINYCRYPT_FILES=(
    "crypto_sources/aes/tinycrypt_aes_decrypt.c"
    "crypto_sources/aes/tinycrypt_aes_encrypt.c"
    "crypto_sources/ecc/tinycrypt_ecc.c"
    "crypto_sources/ecc/tinycrypt_ecc_dh.c"
    "crypto_sources/ecc/tinycrypt_ecc_dsa.c"
)

echo -e "${YELLOW}Include path: $TINYCRYPT_INCLUDE${NC}"
echo ""

# Test compilation first
echo -e "${YELLOW}🔬 Testing compilation with include path...${NC}"
TEST_FILE="crypto_sources/aes/tinycrypt_aes_decrypt.c"

echo -n "  x86-64 GCC: "
if gcc -m64 $TINYCRYPT_INCLUDE -O0 -S -o /tmp/test_tinycrypt.s "$TEST_FILE" 2>/dev/null; then
    echo -e "${GREEN}✅ Works!${NC}"
else
    echo -e "${RED}❌ Failed${NC}"
    echo "  Error:"
    gcc -m64 $TINYCRYPT_INCLUDE -O0 -S -o /tmp/test_tinycrypt.s "$TEST_FILE" 2>&1 | head -3 | sed 's/^/  /'
    echo ""
    echo -e "${RED}Cannot proceed - include path issue!${NC}"
    exit 1
fi
echo ""

echo -e "${GREEN}🚀 Compiling TinyCrypt files...${NC}"
echo ""

START_TIME=$(date +%s)

for source_file in "${TINYCRYPT_FILES[@]}"; do
    if [ ! -f "$source_file" ]; then
        echo -e "${YELLOW}⏭️  Skipping (not found): $(basename $source_file)${NC}"
        continue
    fi
    
    echo -e "${YELLOW}📦 Processing: $(basename $source_file)${NC}"
    
    file_success=0
    file_total=0
    
    for arch in arm arm64 x86-64 mips mipsel riscv64 avr; do
        for opt in "${OPT_LEVELS[@]}"; do
            ((file_total++))
            if compile_to_assembly "$source_file" "$arch" "$opt" "gcc"; then
                ((file_success++))
            fi
            
            if [ "$arch" != "avr" ]; then
                ((file_total++))
                if compile_to_assembly "$source_file" "$arch" "$opt" "clang"; then
                    ((file_success++))
                fi
            fi
        done
    done
    
    echo -e "   Compiled: $file_success/$file_total assemblies"
    echo ""
done

END_TIME=$(date +%s)
DURATION=$((END_TIME - START_TIME))

echo -e "${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║                         SUMMARY                                ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "${GREEN}✅ Compiled: $COMPILED_COUNT assembly files${NC}"
echo -e "${RED}❌ Failed: $ERROR_COUNT${NC}"
echo -e "${BLUE}⏱️  Time: ${DURATION}s${NC}"
echo ""

if [ $COMPILED_COUNT -gt 0 ]; then
    echo -e "${GREEN}🎉 TINYCRYPT FILES COMPILED SUCCESSFULLY!${NC}"
else
    echo -e "${RED}❌ No files were compiled - check errors above${NC}"
fi

echo ""
echo -e "${YELLOW}Next step: Verify results${NC}"
echo -e "  python3 scripts/tier4_verify_assembly.py${NC}"
echo ""