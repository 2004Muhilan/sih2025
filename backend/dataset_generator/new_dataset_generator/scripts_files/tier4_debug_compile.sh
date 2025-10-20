# scripts/tier4_debug_compile.sh
#!/bin/bash
################################################################################
# DEBUG: Test compilation to see actual errors
################################################################################

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Test file
TEST_FILE="crypto_sources/aes/aes_add_round_key.c"

echo -e "${YELLOW}Testing compilation of: $TEST_FILE${NC}"
echo ""

# Test 1: ARM GCC
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}Test 1: ARM GCC${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
arm-linux-gnueabihf-gcc -target arm-linux-gnueabihf -march=armv7-a -O0 -o /tmp/test_arm "$TEST_FILE" 2>&1
echo ""

# Test 2: x86-64 GCC
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}Test 2: x86-64 GCC${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
gcc -m64 -O0 -o /tmp/test_x86 "$TEST_FILE" 2>&1
echo ""

# Test 3: Show file contents
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}File contents (first 30 lines):${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
head -n 30 "$TEST_FILE"
echo ""

# Test 4: Check for missing dependencies
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}Checking for #include statements:${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
grep -n "#include" "$TEST_FILE" || echo "No includes found"
echo ""

echo -e "${GREEN}Debug complete!${NC}"