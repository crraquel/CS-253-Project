#!/bin/bash
# Author: Carlo Raquel
# CS 253 OpenSSL Project
# Script Description: Symmetric AES decryption on the 512x512 Color (24-bit) Lena image (lena512color.tiff) using CBC mode for AES-128.
# Input file: cs253_output2.enc
# Output file: lena_cbcdecrypted.tiff
# password: cs253project
 
openssl aes-128-cbc -salt -a -d -in cs253_output2.enc -out lena_cbcdecrypted.tiff
