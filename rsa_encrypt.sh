#!/bin/bash
# Author: Carlo Raquel
# CS 253 OpenSSL Project
# Script Description: Perform an RSA encryption on the Lena image using RSA-2048
# Input file: lena512color.tiff
 

# Generate an RSA private key
openssl genrsa -out rsa-priv.pem 2048

# Generate an RSA public key
openssl rsa -in rsa-priv.pem -pubout -out rsa-pub.pem -outform PEM

# Generate an AES key
openssl rand -base64 128 > aes-key.txt

# Encrypt the AES key with the public RSA key and save to an encrypted file
openssl rsautl -encrypt -inkey rsa-pub.pem -pubin -in aes-key.txt -out aes-key.enc

# Encrypt the Lena image using the AES key
openssl aes-256-cbc -e -in lena512color.tiff -out lena_rsa.enc -pass file:./aes-key.txt




