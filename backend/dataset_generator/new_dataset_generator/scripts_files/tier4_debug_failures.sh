# scripts/tier4_debug_failures.sh
#!/bin/bash
################################################################################
# Debug specific compilation failures
################################################################################

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

TEST_FILE="crypto_sources/aes/aes_add_round_key.c"

echo -e "${BLUE}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║                  DEBUGGING COMPILATION FAILURES                ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${NC}"
echo ""

################################################################################
# Test 1: ARM GCC with different float ABI options
################################################################################
echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}Test 1: ARM GCC (trying different configurations)${NC}"
echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

echo ""
echo "1a. ARM with -mfloat-abi=soft:"
arm-linux-gnueabihf-gcc -march=armv7-a -mfloat-abi=soft -O0 -c -o /tmp/test_arm1.o "$TEST_FILE" 2>&1
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ SUCCESS${NC}"
else
    echo -e "${RED}❌ FAILED${NC}"
fi

echo ""
echo "1b. ARM without float flags:"
arm-linux-gnueabihf-gcc -O0 -c -o /tmp/test_arm2.o "$TEST_FILE" 2>&1
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ SUCCESS${NC}"
else
    echo -e "${RED}❌ FAILED${NC}"
fi

echo ""
echo "1c. ARM with -mfpu=neon:"
arm-linux-gnueabihf-gcc -march=armv7-a -mfpu=neon -mfloat-abi=softfp -O0 -c -o /tmp/test_arm3.o "$TEST_FILE" 2>&1
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ SUCCESS${NC}"
else
    echo -e "${RED}❌ FAILED${NC}"
fi

################################################################################
# Test 2: AVR with different include paths
################################################################################
echo ""
echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}Test 2: AVR GCC (checking stdint.h locations)${NC}"
echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

echo ""
echo "2a. Searching for AVR stdint.h:"
find /usr -name "stdint.h" 2>/dev/null | grep avr

echo ""
echo "2b. Checking AVR include paths:"
avr-gcc -E -Wp,-v -xc /dev/null 2>&1 | grep "^ "

echo ""
echo "2c. AVR with default paths:"
avr-gcc -mmcu=atmega328p -O0 -c -o /tmp/test_avr1.o "$TEST_FILE" 2>&1
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ SUCCESS${NC}"
else
    echo -e "${RED}❌ FAILED${NC}"
fi

echo ""
echo "2d. AVR with explicit include:"
AVR_INCLUDE=$(find /usr -path "*/avr/include" -type d 2>/dev/null | head -1)
if [ -n "$AVR_INCLUDE" ]; then
    echo "Found AVR include: $AVR_INCLUDE"
    avr-gcc -mmcu=atmega328p -I"$AVR_INCLUDE" -O0 -c -o /tmp/test_avr2.o "$TEST_FILE" 2>&1
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✅ SUCCESS${NC}"
    else
        echo -e "${RED}❌ FAILED${NC}"
    fi
else
    echo "AVR include directory not found"
fi

################################################################################
# Test 3: Check ARM compiler variant
################################################################################
echo ""
echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}Test 3: ARM Compiler Information${NC}"
echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

echo ""
echo "ARM GCC version:"
arm-linux-gnueabihf-gcc --version | head -1

echo ""
echo "ARM GCC default specs:"
arm-linux-gnueabihf-gcc -dumpspecs 2>/dev/null | grep -A2 "float-abi" || echo "No float-abi specs found"

echo ""
echo "ARM GCC multilib options:"
arm-linux-gnueabihf-gcc -print-multi-lib

################################################################################
# Test 4: Alternative approach - try arm-none-eabi-gcc
################################################################################
echo ""
echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}Test 4: Checking for alternative ARM compilers${NC}"
echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

if command -v arm-none-eabi-gcc &> /dev/null; then
    echo ""
    echo "Found arm-none-eabi-gcc (embedded ARM compiler)"
    echo "Testing with arm-none-eabi-gcc:"
    arm-none-eabi-gcc -mcpu=cortex-m3 -O0 -c -o /tmp/test_arm_eabi.o "$TEST_FILE" 2>&1
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✅ SUCCESS - Can use this as alternative!${NC}"
    else
        echo -e "${RED}❌ FAILED${NC}"
    fi
else
    echo "arm-none-eabi-gcc not installed"
    echo "Install with: sudo apt install gcc-arm-none-eabi"
fi

################################################################################
# Test 5: Test a file that previously succeeded
################################################################################
echo ""
echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}Test 5: Testing file that compiled successfully${NC}"
echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

# Find a file that compiled successfully
SUCCESS_FILE=$(find compiled_binaries -name "*.o" | head -1)
if [ -n "$SUCCESS_FILE" ]; then
    # Extract source file info from compiled file path
    echo "Found successful compilation: $SUCCESS_FILE"
    echo "This proves the compilation pipeline works for some files"
else
    echo "No successful compilations found to compare"
fi

echo ""
echo -e "${GREEN}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║                     DEBUG COMPLETE                             ║${NC}"
echo -e "${GREEN}╚════════════════════════════════════════════════════════════════╝${NC}"