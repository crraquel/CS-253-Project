#!/bin/bash
# Carlo Raquel
# Author: Carlo Raquel
# CS 253 OpenSSL Project
# Script Description: Symmetric AES encryption on the 512x512 Color (24-bit) Lena image (lena512color.tiff) using ECB mode for AES-128.
# Input file: lena512color.tiffr
# Output file: cs253_output1.enc
# password: cs253project

openssl aes-128-ecb -salt -a -e -in lena512color.tiff -out cs253_output1.enc
