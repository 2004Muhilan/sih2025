#!/bin/bash
# Master script for Tier 1: Library Extraction

set -e  # Exit on error

echo "======================================================================"
echo "TIER 1: LIBRARY EXTRACTION - MASTER SCRIPT"
echo "======================================================================"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Step 1: Check prerequisites
echo ""
echo "Step 1: Checking prerequisites..."
echo "----------------------------------------------------------------------"

if ! command -v git &> /dev/null; then
    echo -e "${RED}❌ git is not installed${NC}"
    exit 1
fi

if ! command -v python3 &> /dev/null; then
    echo -e "${RED}❌ python3 is not installed${NC}"
    exit 1
fi

echo -e "${GREEN}✓ Prerequisites OK${NC}"

# Step 2: Create directory structure
echo ""
echo "Step 2: Creating directory structure..."
echo "----------------------------------------------------------------------"

mkdir -p crypto_libraries
mkdir -p crypto_sources/{aes,des,rc4,xor_cipher,rsa,ecc,md5,sha1,sha256,hmac,base64,prng}
mkdir -p compiled_binaries/{arm,arm64,x86-64,mips,mipsel,riscv64,avr}
mkdir -p scripts

echo -e "${GREEN}✓ Directory structure created${NC}"

# Step 3: Clone libraries
echo ""
echo "Step 3: Cloning crypto libraries..."
echo "----------------------------------------------------------------------"

cd crypto_libraries

# Clone mbedTLS
if [ ! -d "mbedtls" ]; then
    echo "Cloning mbedTLS..."
    git clone --depth 1 --branch mbedtls-3.5 https://github.com/Mbed-TLS/mbedtls.git
    echo -e "${GREEN}✓ mbedTLS cloned${NC}"
else
    echo -e "${YELLOW}⚠ mbedTLS already exists, skipping...${NC}"
fi

# Clone TinyCrypt
if [ ! -d "tinycrypt" ]; then
    echo "Cloning TinyCrypt..."
    git clone --depth 1 https://github.com/intel/tinycrypt.git
    echo -e "${GREEN}✓ TinyCrypt cloned${NC}"
else
    echo -e "${YELLOW}⚠ TinyCrypt already exists, skipping...${NC}"
fi

cd ..

# Step 4: Analyze libraries
echo ""
echo "Step 4: Analyzing crypto libraries..."
echo "----------------------------------------------------------------------"

python3 scripts/analyze_libraries.py

# Step 5: Extract from mbedTLS
echo ""
echo "Step 5: Extracting functions from mbedTLS..."
echo "----------------------------------------------------------------------"

python3 scripts/extract_library_functions.py

# Step 6: Create custom implementations
echo ""
echo "Step 6: Creating custom crypto implementations (XOR, RC4)..."
echo "----------------------------------------------------------------------"

python3 scripts/create_custom_crypto.py

# Step 7: Summary
echo ""
echo "======================================================================"
echo "TIER 1 EXTRACTION COMPLETE!"
echo "======================================================================"

# Count files
aes_count=$(find crypto_sources/aes -name "*.c" 2>/dev/null | wc -l)
des_count=$(find crypto_sources/des -name "*.c" 2>/dev/null | wc -l)
rc4_count=$(find crypto_sources/rc4 -name "*.c" 2>/dev/null | wc -l)
xor_count=$(find crypto_sources/xor_cipher -name "*.c" 2>/dev/null | wc -l)
rsa_count=$(find crypto_sources/rsa -name "*.c" 2>/dev/null | wc -l)
ecc_count=$(find crypto_sources/ecc -name "*.c" 2>/dev/null | wc -l)
md5_count=$(find crypto_sources/md5 -name "*.c" 2>/dev/null | wc -l)
sha1_count=$(find crypto_sources/sha1 -name "*.c" 2>/dev/null | wc -l)
sha256_count=$(find crypto_sources/sha256 -name "*.c" 2>/dev/null | wc -l)
hmac_count=$(find crypto_sources/hmac -name "*.c" 2>/dev/null | wc -l)
base64_count=$(find crypto_sources/base64 -name "*.c" 2>/dev/null | wc -l)
prng_count=$(find crypto_sources/prng -name "*.c" 2>/dev/null | wc -l)

total_count=$((aes_count + des_count + rc4_count + xor_count + rsa_count + ecc_count + md5_count + sha1_count + sha256_count + hmac_count + base64_count + prng_count))

echo ""
echo "Extracted source files by algorithm:"
echo "  AES:        $aes_count files"
echo "  DES:        $des_count files"
echo "  RC4:        $rc4_count files"
echo "  XOR Cipher: $xor_count files"
echo "  RSA:        $rsa_count files"
echo "  ECC:        $ecc_count files"
echo "  MD5:        $md5_count files"
echo "  SHA1:       $sha1_count files"
echo "  SHA256:     $sha256_count files"
echo "  HMAC:       $hmac_count files"
echo "  Base64:     $base64_count files"
echo "  PRNG:       $prng_count files"
echo "  ----------------------------"
echo "  TOTAL:      $total_count files"
echo ""

if [ $total_count -gt 0 ]; then
    echo -e "${GREEN}✓ Tier 1 extraction successful!${NC}"
    echo ""
    echo "Next steps:"
    echo "  1. Review extracted files in crypto_sources/"
    echo "  2. Proceed to Tier 2: Sub-function decomposition"
    echo "     Run: ./run_tier2_decomposition.sh"
else
    echo -e "${RED}❌ No files extracted - check for errors above${NC}"
    exit 1
fi