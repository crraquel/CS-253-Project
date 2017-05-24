#!/bin/bash
# Author: Carlo Raquel
# CS 253 OpenSSL Project
# Script Description: Symmetric AES decryption on the 512x512 Color (24-bit) Lena image (lena512color.tiff) using ECB mode for AES-128.
# Input file: cs253_output1.enc
# Output file: lena_ecbdecrypted
# password: cs253project
 
openssl aes-128-ecb -salt -a -d -in cs253_output1.enc -out lena_ecbdecrypted.tiff
