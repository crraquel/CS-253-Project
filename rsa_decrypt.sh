#!/bin/bash
# Author: Carlo Raquel
# CS 253 OpenSSL Project
# Script Description: Symmetric AES decryption on the 512x512 Color (24-bit) Lena image (lena512color.tiff) using CBC mode for AES-258.
# Input file: cs253_output2.enc
# Output file: lena_cbcdecrypted.tiff
# password: cs253project

# Decrypt AES key 
openssl rsautl -decrypt -inkey rsa-priv.pem -in aes-key.enc -out aes-key.dec

# Decrypt the encrypted Lena image using the decrypted AES key
openssl aes-256-cbc -d -in lena_rsa.enc -out lena_rsadec.tiff -pass file:./aes-key.dec

