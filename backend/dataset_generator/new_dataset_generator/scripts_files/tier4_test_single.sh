# scripts/tier4_test_single.sh
#!/bin/bash
################################################################################
# Test single file compilation to see actual errors
################################################################################

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

TEST_FILE="crypto_sources/aes/aes_add_round_key.c"

echo -e "${YELLOW}Testing: $TEST_FILE${NC}"
echo ""

# Test 1: ARM GCC (show full error)
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}Test 1: ARM GCC with -c flag${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo "Command: arm-linux-gnueabihf-gcc -march=armv7-a -O0 -c -o /tmp/test.o $TEST_FILE"
arm-linux-gnueabihf-gcc -march=armv7-a -O0 -c -o /tmp/test.o "$TEST_FILE"
RESULT=$?
if [ $RESULT -eq 0 ]; then
    echo -e "${GREEN}✅ SUCCESS!${NC}"
    ls -lh /tmp/test.o
else
    echo -e "${RED}❌ FAILED with exit code: $RESULT${NC}"
fi
echo ""

# Test 2: x86-64 GCC
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}Test 2: x86-64 GCC with -c flag${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo "Command: gcc -m64 -O0 -c -o /tmp/test_x86.o $TEST_FILE"
gcc -m64 -O0 -c -o /tmp/test_x86.o "$TEST_FILE"
RESULT=$?
if [ $RESULT -eq 0 ]; then
    echo -e "${GREEN}✅ SUCCESS!${NC}"
    ls -lh /tmp/test_x86.o
else
    echo -e "${RED}❌ FAILED with exit code: $RESULT${NC}"
fi
echo ""

# Test 3: AVR GCC
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}Test 3: AVR GCC with -c flag${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo "Command: avr-gcc -mmcu=atmega328p -O0 -c -o /tmp/test_avr.o $TEST_FILE"
avr-gcc -mmcu=atmega328p -O0 -c -o /tmp/test_avr.o "$TEST_FILE"
RESULT=$?
if [ $RESULT -eq 0 ]; then
    echo -e "${GREEN}✅ SUCCESS!${NC}"
    ls -lh /tmp/test_avr.o
else
    echo -e "${RED}❌ FAILED with exit code: $RESULT${NC}"
fi
echo ""

# Test 4: Check file contents
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}File contents:${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
cat "$TEST_FILE"
echo ""

# Test 5: Try Clang
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}Test 4: Clang with ARM target${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo "Command: clang -target arm-linux-gnueabihf -march=armv7-a -O0 -c -o /tmp/test_clang.o $TEST_FILE"
clang -target arm-linux-gnueabihf -march=armv7-a -O0 -c -o /tmp/test_clang.o "$TEST_FILE"
RESULT=$?
if [ $RESULT -eq 0 ]; then
    echo -e "${GREEN}✅ SUCCESS!${NC}"
    ls -lh /tmp/test_clang.o
else
    echo -e "${RED}❌ FAILED with exit code: $RESULT${NC}"
fi
echo ""

echo -e "${GREEN}Debug complete!${NC}"