#!/usr/bin/env python3
import os
import shutil
from pathlib import Path

tinycrypt_path = "crypto_libraries/tinycrypt"
output_dir = "crypto_sources"

print("="*70)
print("EXTRACTING FROM TINYCRYPT")
print("="*70)

source_dir = Path(tinycrypt_path) / "lib" / "source"

# AES
aes_dir = Path(output_dir) / "aes"
aes_dir.mkdir(parents=True, exist_ok=True)
shutil.copy(source_dir / "aes_encrypt.c", aes_dir / "tinycrypt_aes_encrypt.c")
shutil.copy(source_dir / "aes_decrypt.c", aes_dir / "tinycrypt_aes_decrypt.c")
print("✓ AES: 2 files")

# SHA256
sha256_dir = Path(output_dir) / "sha256"
sha256_dir.mkdir(parents=True, exist_ok=True)
shutil.copy(source_dir / "sha256.c", sha256_dir / "tinycrypt_sha256.c")
print("✓ SHA256: 1 file")

# HMAC
hmac_dir = Path(output_dir) / "hmac"
hmac_dir.mkdir(parents=True, exist_ok=True)
shutil.copy(source_dir / "hmac.c", hmac_dir / "tinycrypt_hmac.c")
print("✓ HMAC: 1 file")

# ECC
ecc_dir = Path(output_dir) / "ecc"
ecc_dir.mkdir(parents=True, exist_ok=True)
shutil.copy(source_dir / "ecc.c", ecc_dir / "tinycrypt_ecc.c")
shutil.copy(source_dir / "ecc_dh.c", ecc_dir / "tinycrypt_ecc_dh.c")
shutil.copy(source_dir / "ecc_dsa.c", ecc_dir / "tinycrypt_ecc_dsa.c")
print("✓ ECC: 3 files")

# PRNG
prng_dir = Path(output_dir) / "prng"
prng_dir.mkdir(parents=True, exist_ok=True)
shutil.copy(source_dir / "hmac_prng.c", prng_dir / "tinycrypt_hmac_prng.c")
print("✓ PRNG: 1 file")

print("\n✓ Extracted 8 files from TinyCrypt")