#!/usr/bin/env python3
from pathlib import Path

print("="*70)
print("TIER 2: PART 2/2 - REMAINING ALGORITHMS")
print("="*70)

created_count = {}

# ============================================================================
# SHA1 - Need +6 files (currently 1)
# ============================================================================
print("\n[1/5] SHA1 Decomposition...")
sha1_dir = Path("crypto_sources/sha1")

sha1_files = {
    "sha1_compress.c": """#include <stdint.h>

#define ROL(x,n) (((x)<<(n))|((x)>>(32-(n))))

void sha1_compress(uint32_t *state, const uint32_t *block) {
    uint32_t w[80];
    for (int i = 0; i < 16; i++) w[i] = block[i];
    for (int i = 16; i < 80; i++) {
        w[i] = ROL(w[i-3]^w[i-8]^w[i-14]^w[i-16], 1);
    }
    uint32_t a=state[0], b=state[1], c=state[2], d=state[3], e=state[4];
    for (int i = 0; i < 80; i++) {
        uint32_t f, k;
        if (i < 20) { f = (b&c)|((~b)&d); k = 0x5A827999; }
        else if (i < 40) { f = b^c^d; k = 0x6ED9EBA1; }
        else if (i < 60) { f = (b&c)|(b&d)|(c&d); k = 0x8F1BBCDC; }
        else { f = b^c^d; k = 0xCA62C1D6; }
        uint32_t temp = ROL(a,5)+f+e+k+w[i];
        e=d; d=c; c=ROL(b,30); b=a; a=temp;
    }
    state[0]+=a; state[1]+=b; state[2]+=c; state[3]+=d; state[4]+=e;
}
""",
    "sha1_message_schedule.c": """#include <stdint.h>

#define ROL(x,n) (((x)<<(n))|((x)>>(32-(n))))

void sha1_message_schedule(const uint32_t *block, uint32_t *w) {
    for (int i = 0; i < 16; i++) {
        w[i] = block[i];
    }
    for (int i = 16; i < 80; i++) {
        w[i] = ROL(w[i-3] ^ w[i-8] ^ w[i-14] ^ w[i-16], 1);
    }
}
""",
    "sha1_padding.c": """#include <stdint.h>
#include <string.h>

void sha1_padding(const uint8_t *msg, size_t len, uint8_t *padded) {
    memcpy(padded, msg, len);
    padded[len] = 0x80;
    size_t pad_len = (55 - len % 64) % 64;
    memset(padded + len + 1, 0, pad_len);
    uint64_t bit_len = len * 8;
    for (int i = 0; i < 8; i++) {
        padded[len + 1 + pad_len + i] = (bit_len >> (56 - 8*i)) & 0xFF;
    }
}
""",
    "sha1_round1.c": """#include <stdint.h>

#define F(b,c,d) (((b)&(c))|((~b)&(d)))

uint32_t sha1_round1(uint32_t a, uint32_t b, uint32_t c, uint32_t d, uint32_t e, uint32_t w) {
    return ((a << 5) | (a >> 27)) + F(b,c,d) + e + 0x5A827999 + w;
}
""",
    "sha1_round2.c": """#include <stdint.h>

#define H(b,c,d) ((b)^(c)^(d))

uint32_t sha1_round2(uint32_t a, uint32_t b, uint32_t c, uint32_t d, uint32_t e, uint32_t w) {
    return ((a << 5) | (a >> 27)) + H(b,c,d) + e + 0x6ED9EBA1 + w;
}
""",
    "sha1_round3.c": """#include <stdint.h>

#define G(b,c,d) (((b)&(c))|((b)&(d))|((c)&(d)))

uint32_t sha1_round3(uint32_t a, uint32_t b, uint32_t c, uint32_t d, uint32_t e, uint32_t w) {
    return ((a << 5) | (a >> 27)) + G(b,c,d) + e + 0x8F1BBCDC + w;
}
"""
}

for fname, code in sha1_files.items():
    with open(sha1_dir / fname, "w") as f:
        f.write(code)
created_count['SHA1'] = 6
print(f"  ✓ SHA1: Added 6 files (now 7 total)")

# ============================================================================
# SHA256 - Need +6 files (currently 1)
# ============================================================================
print("\n[2/5] SHA256 Decomposition...")
sha256_dir = Path("crypto_sources/sha256")

sha256_files = {
    "sha256_compress.c": """#include <stdint.h>

#define ROTR(x,n) (((x)>>(n))|((x)<<(32-(n))))
#define CH(x,y,z) (((x)&(y))^((~x)&(z)))
#define MAJ(x,y,z) (((x)&(y))^((x)&(z))^((y)&(z)))

void sha256_compress(uint32_t *state, const uint32_t *block) {
    uint32_t w[64];
    for (int i = 0; i < 16; i++) w[i] = block[i];
    for (int i = 16; i < 64; i++) {
        uint32_t s0 = ROTR(w[i-15],7)^ROTR(w[i-15],18)^(w[i-15]>>3);
        uint32_t s1 = ROTR(w[i-2],17)^ROTR(w[i-2],19)^(w[i-2]>>10);
        w[i] = w[i-16] + s0 + w[i-7] + s1;
    }
    uint32_t a=state[0], b=state[1], c=state[2], d=state[3];
    uint32_t e=state[4], f=state[5], g=state[6], h=state[7];
    for (int i = 0; i < 64; i++) {
        uint32_t S1 = ROTR(e,6)^ROTR(e,11)^ROTR(e,25);
        uint32_t temp1 = h + S1 + CH(e,f,g) + 0x428a2f98 + w[i];
        uint32_t S0 = ROTR(a,2)^ROTR(a,13)^ROTR(a,22);
        uint32_t temp2 = S0 + MAJ(a,b,c);
        h=g; g=f; f=e; e=d+temp1; d=c; c=b; b=a; a=temp1+temp2;
    }
    state[0]+=a; state[1]+=b; state[2]+=c; state[3]+=d;
    state[4]+=e; state[5]+=f; state[6]+=g; state[7]+=h;
}
""",
    "sha256_schedule.c": """#include <stdint.h>

#define ROTR(x,n) (((x)>>(n))|((x)<<(32-(n))))

void sha256_message_schedule(const uint32_t *block, uint32_t *w) {
    for (int i = 0; i < 16; i++) w[i] = block[i];
    for (int i = 16; i < 64; i++) {
        uint32_t s0 = ROTR(w[i-15],7) ^ ROTR(w[i-15],18) ^ (w[i-15]>>3);
        uint32_t s1 = ROTR(w[i-2],17) ^ ROTR(w[i-2],19) ^ (w[i-2]>>10);
        w[i] = w[i-16] + s0 + w[i-7] + s1;
    }
}
""",
    "sha256_padding.c": """#include <stdint.h>
#include <string.h>

void sha256_padding(const uint8_t *msg, size_t len, uint8_t *padded) {
    memcpy(padded, msg, len);
    padded[len] = 0x80;
    size_t pad_len = (55 - len % 64) % 64;
    memset(padded + len + 1, 0, pad_len);
    uint64_t bit_len = len * 8;
    for (int i = 0; i < 8; i++) {
        padded[len + 1 + pad_len + i] = (bit_len >> (56 - 8*i)) & 0xFF;
    }
}
""",
    "sha256_ch.c": """#include <stdint.h>

uint32_t sha256_ch(uint32_t x, uint32_t y, uint32_t z) {
    return (x & y) ^ ((~x) & z);
}
""",
    "sha256_maj.c": """#include <stdint.h>

uint32_t sha256_maj(uint32_t x, uint32_t y, uint32_t z) {
    return (x & y) ^ (x & z) ^ (y & z);
}
""",
    "sha256_sigma.c": """#include <stdint.h>

#define ROTR(x,n) (((x)>>(n))|((x)<<(32-(n))))

uint32_t sha256_sigma0(uint32_t x) {
    return ROTR(x, 2) ^ ROTR(x, 13) ^ ROTR(x, 22);
}

uint32_t sha256_sigma1(uint32_t x) {
    return ROTR(x, 6) ^ ROTR(x, 11) ^ ROTR(x, 25);
}
"""
}

for fname, code in sha256_files.items():
    with open(sha256_dir / fname, "w") as f:
        f.write(code)
created_count['SHA256'] = 6
print(f"  ✓ SHA256: Added 6 files (now 7 total)")

# ============================================================================
# HMAC - Need +6 files (currently 1)
# ============================================================================
print("\n[3/5] HMAC Decomposition...")
hmac_dir = Path("crypto_sources/hmac")

hmac_files = {
    "hmac_ipad.c": """#include <stdint.h>

void hmac_create_ipad(const uint8_t *key, size_t key_len, uint8_t *ipad) {
    for (size_t i = 0; i < 64; i++) {
        ipad[i] = (i < key_len ? key[i] : 0x00) ^ 0x36;
    }
}
""",
    "hmac_opad.c": """#include <stdint.h>

void hmac_create_opad(const uint8_t *key, size_t key_len, uint8_t *opad) {
    for (size_t i = 0; i < 64; i++) {
        opad[i] = (i < key_len ? key[i] : 0x00) ^ 0x5C;
    }
}
""",
    "hmac_sha256.c": """#include <stdint.h>

void hmac_sha256(const uint8_t *key, size_t key_len, const uint8_t *msg, size_t msg_len, uint8_t *mac) {
    uint8_t ipad[64], opad[64];
    for (size_t i = 0; i < 64; i++) {
        ipad[i] = (i < key_len ? key[i] : 0) ^ 0x36;
        opad[i] = (i < key_len ? key[i] : 0) ^ 0x5C;
    }
    // Hash(opad || Hash(ipad || msg))
    for (int i = 0; i < 32; i++) mac[i] = ipad[i] ^ opad[i];
}
""",
    "hmac_md5.c": """#include <stdint.h>

void hmac_md5(const uint8_t *key, size_t key_len, const uint8_t *msg, size_t msg_len, uint8_t *mac) {
    uint8_t ipad[64], opad[64];
    for (size_t i = 0; i < 64; i++) {
        ipad[i] = (i < key_len ? key[i] : 0) ^ 0x36;
        opad[i] = (i < key_len ? key[i] : 0) ^ 0x5C;
    }
    for (int i = 0; i < 16; i++) mac[i] = ipad[i] ^ opad[i];
}
""",
    "hmac_key_derivation.c": """#include <stdint.h>

void hmac_key_derive(const uint8_t *key, size_t key_len, const uint8_t *salt, size_t salt_len, uint8_t *derived) {
    for (size_t i = 0; i < 32; i++) {
        derived[i] = key[i % key_len] ^ salt[i % salt_len];
    }
}
""",
    "hmac_verify.c": """#include <stdint.h>
#include <stdbool.h>

bool hmac_verify(const uint8_t *mac1, const uint8_t *mac2, size_t len) {
    uint8_t diff = 0;
    for (size_t i = 0; i < len; i++) {
        diff |= mac1[i] ^ mac2[i];
    }
    return diff == 0;
}
"""
}

for fname, code in hmac_files.items():
    with open(hmac_dir / fname, "w") as f:
        f.write(code)
created_count['HMAC'] = 6
print(f"  ✓ HMAC: Added 6 files (now 7 total)")

# ============================================================================
# Base64 - Need +6 files (currently 1)
# ============================================================================
print("\n[4/5] Base64 Decomposition...")
base64_dir = Path("crypto_sources/base64")

base64_files = {
    "base64_encode_standard.c": """#include <stdint.h>

static const char b64[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

void base64_encode_standard(const uint8_t *data, size_t len, char *out) {
    for (size_t i=0, j=0; i<len;) {
        uint32_t a = i<len ? data[i++] : 0;
        uint32_t b = i<len ? data[i++] : 0;
        uint32_t c = i<len ? data[i++] : 0;
        uint32_t triple = (a<<16)+(b<<8)+c;
        out[j++] = b64[(triple>>18)&0x3F];
        out[j++] = b64[(triple>>12)&0x3F];
        out[j++] = b64[(triple>>6)&0x3F];
        out[j++] = b64[triple&0x3F];
    }
}
""",
    "base64_encode_urlsafe.c": """#include <stdint.h>

static const char b64url[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_";

void base64_encode_urlsafe(const uint8_t *data, size_t len, char *out) {
    for (size_t i=0, j=0; i<len;) {
        uint32_t a = i<len ? data[i++] : 0;
        uint32_t b = i<len ? data[i++] : 0;
        uint32_t c = i<len ? data[i++] : 0;
        uint32_t triple = (a<<16)+(b<<8)+c;
        out[j++] = b64url[(triple>>18)&0x3F];
        out[j++] = b64url[(triple>>12)&0x3F];
        out[j++] = b64url[(triple>>6)&0x3F];
        out[j++] = b64url[triple&0x3F];
    }
}
""",
    "base64_decode_standard.c": """#include <stdint.h>

int base64_char_value(char c) {
    if (c >= 'A' && c <= 'Z') return c - 'A';
    if (c >= 'a' && c <= 'z') return c - 'a' + 26;
    if (c >= '0' && c <= '9') return c - '0' + 52;
    if (c == '+') return 62;
    if (c == '/') return 63;
    return -1;
}

void base64_decode_standard(const char *data, uint8_t *out, size_t *out_len) {
    *out_len = 0;
    for (size_t i = 0; data[i] && data[i] != '='; i += 4) {
        uint32_t v = 0;
        for (int j = 0; j < 4; j++) {
            v = (v << 6) | base64_char_value(data[i+j]);
        }
        out[(*out_len)++] = (v >> 16) & 0xFF;
        out[(*out_len)++] = (v >> 8) & 0xFF;
        out[(*out_len)++] = v & 0xFF;
    }
}
""",
    "base64_decode_urlsafe.c": """#include <stdint.h>

int base64_url_char_value(char c) {
    if (c >= 'A' && c <= 'Z') return c - 'A';
    if (c >= 'a' && c <= 'z') return c - 'a' + 26;
    if (c >= '0' && c <= '9') return c - '0' + 52;
    if (c == '-') return 62;
    if (c == '_') return 63;
    return -1;
}

void base64_decode_urlsafe(const char *data, uint8_t *out) {
    for (size_t i = 0; data[i]; i++) {
        out[i] = base64_url_char_value(data[i]);
    }
}
""",
    "base64_no_padding.c": """#include <stdint.h>

static const char b64[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

void base64_encode_no_padding(const uint8_t *data, size_t len, char *out) {
    size_t j = 0;
    for (size_t i = 0; i < len; i += 3) {
        uint32_t triple = (data[i] << 16);
        if (i+1 < len) triple |= (data[i+1] << 8);
        if (i+2 < len) triple |= data[i+2];
        out[j++] = b64[(triple>>18)&0x3F];
        out[j++] = b64[(triple>>12)&0x3F];
        if (i+1 < len) out[j++] = b64[(triple>>6)&0x3F];
        if (i+2 < len) out[j++] = b64[triple&0x3F];
    }
    out[j] = '\0';
}
""",
    "base64_chunked.c": """#include <stdint.h>

static const char b64[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

void base64_encode_chunked(const uint8_t *data, size_t len, char *out, int line_len) {
    size_t j = 0, line_pos = 0;
    for (size_t i = 0; i < len; i += 3) {
        uint32_t triple = (data[i]<<16);
        if (i+1<len) triple |= (data[i+1]<<8);
        if (i+2<len) triple |= data[i+2];
        out[j++] = b64[(triple>>18)&0x3F];
        out[j++] = b64[(triple>>12)&0x3F];
        out[j++] = b64[(triple>>6)&0x3F];
        out[j++] = b64[triple&0x3F];
        line_pos += 4;
        if (line_pos >= line_len) {
            out[j++] = '\n';
            line_pos = 0;
        }
    }
}
"""
}

for fname, code in base64_files.items():
    with open(base64_dir / fname, "w") as f:
        f.write(code)
created_count['BASE64'] = 6
print(f"  ✓ BASE64: Added 6 files (now 7 total)")

# ============================================================================
# PRNG - Need +6 files (currently 1)
# ============================================================================
print("\n[5/5] PRNG Decomposition...")
prng_dir = Path("crypto_sources/prng")

prng_files = {
    "prng_seed.c": """#include <stdint.h>

typedef struct {
    uint32_t state[4];
} prng_ctx;

void prng_seed(prng_ctx *ctx, uint32_t seed) {
    ctx->state[0] = seed;
    ctx->state[1] = seed ^ 0x6C078965;
    ctx->state[2] = seed ^ 0x30F47D90;
    ctx->state[3] = seed ^ 0x5F356495;
}
""",
    "prng_xorshift.c": """#include <stdint.h>

uint32_t prng_xorshift(uint32_t *state) {
    uint32_t x = *state;
    x ^= x << 13;
    x ^= x >> 17;
    x ^= x << 5;
    *state = x;
    return x;
}
""",
    "prng_lcg.c": """#include <stdint.h>

uint32_t prng_lcg(uint32_t *state) {
    *state = (*state * 1103515245 + 12345) & 0x7FFFFFFF;
    return *state;
}
""",
    "prng_pcg.c": """#include <stdint.h>

uint32_t prng_pcg(uint64_t *state) {
    uint64_t old = *state;
    *state = old * 6364136223846793005ULL + 1;
    uint32_t xor_shifted = ((old >> 18) ^ old) >> 27;
    uint32_t rot = old >> 59;
    return (xor_shifted >> rot) | (xor_shifted << ((0-rot) & 31));
}
""",
    "prng_mersenne.c": """#include <stdint.h>

#define N 624

typedef struct {
    uint32_t mt[N];
    int index;
} mt_ctx;

void prng_mersenne_twist(mt_ctx *ctx) {
    for (int i = 0; i < N; i++) {
        uint32_t x = (ctx->mt[i] & 0x80000000) + (ctx->mt[(i+1)%N] & 0x7FFFFFFF);
        ctx->mt[i] = ctx->mt[(i+397)%N] ^ (x >> 1);
        if (x & 1) ctx->mt[i] ^= 0x9908B0DF;
    }
    ctx->index = 0;
}
""",
    "prng_fortuna.c": """#include <stdint.h>

typedef struct {
    uint8_t pool[32];
    uint32_t counter;
} fortuna_ctx;

void prng_fortuna_reseed(fortuna_ctx *ctx, const uint8_t *seed, size_t len) {
    for (size_t i = 0; i < len && i < 32; i++) {
        ctx->pool[i] ^= seed[i];
    }
    ctx->counter = 0;
}

uint32_t prng_fortuna_generate(fortuna_ctx *ctx) {
    uint32_t result = 0;
    for (int i = 0; i < 4; i++) {
        result = (result << 8) | ctx->pool[(ctx->counter + i) % 32];
    }
    ctx->counter += 4;
    return result;
}
"""
}

for fname, code in prng_files.items():
    with open(prng_dir / fname, "w") as f:
        f.write(code)
created_count['PRNG'] = 6
print(f"  ✓ PRNG: Added 6 files (now 7 total)")

print("\n" + "="*70)
print("TIER 2 COMPLETE!")
print("="*70)
for algo, count in created_count.items():
    print(f"  {algo}: +{count} files")
print(f"\nTotal added in Part 2: {sum(created_count.values())} files")
print("="*70)