# scripts/tier4_recompile_fixed.sh
#!/bin/bash
################################################################################
# Recompile only the fixed algorithms (HMAC, BASE64, XOR_CIPHER, RC4)
################################################################################

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

CRYPTO_SOURCES="crypto_sources"
OUTPUT_DIR="compiled_binaries"
OPT_LEVELS=("O0" "O1" "O2" "O3" "Os")

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
    
    if $compiler $flags -$opt -S -o "$output_asm" "$source_file" -w 2>/dev/null; then
        ((COMPILED_COUNT++))
        return 0
    else
        ((ERROR_COUNT++))
        return 1
    fi
}

echo -e "${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║      RECOMPILING FIXED ALGORITHMS (HMAC, BASE64, XOR, RC4)    ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}"
echo ""

# Target algorithms
FIXED_ALGOS=("hmac" "base64" "xor_cipher" "rc4")

echo -e "${GREEN}🔄 Recompiling fixed algorithms...${NC}"
echo ""

START_TIME=$(date +%s)

for algo in "${FIXED_ALGOS[@]}"; do
    echo -e "${YELLOW}📦 Processing: $algo${NC}"
    
    for source_file in $(find "$CRYPTO_SOURCES/$algo" -name "*.c" | sort); do
        echo -n "  $(basename $source_file): "
        
        file_success=0
        
        for arch in arm arm64 x86-64 mips mipsel riscv64 avr; do
            for opt in "${OPT_LEVELS[@]}"; do
                compile_to_assembly "$source_file" "$arch" "$opt" "gcc"
                ((file_success++))
                
                if [ "$arch" != "avr" ]; then
                    compile_to_assembly "$source_file" "$arch" "$opt" "clang"
                    ((file_success++))
                fi
            done
        done
        
        echo -e "${GREEN}✅${NC}"
    done
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
echo -e "${GREEN}🎉 RECOMPILATION COMPLETE!${NC}"
echo ""
echo -e "${YELLOW}Verify results: python3 scripts/tier4_verify_assembly.py${NC}"
echo ""