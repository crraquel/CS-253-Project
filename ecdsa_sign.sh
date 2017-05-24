#!/bin/bash
# Author: Carlo Raquel
# CS 253 OpenSSL Project
# Script Description: Generate a ECDSA signature for the Lena image (lena512color.tiff) using SHA256 
# Input file: lena512color.tiff
# Output file: 

# Generate EC private key
openssl ecparam -name secp256k1 -genkey -out ec-priv.pem

# Generate EC public key
openssl ec -in ec-priv.pem -pubout -out ec-pub.pem

# Generate a signature of the Lena image using the EC private key
openssl dgst -sha256 -sign ec-priv.pem lena512color.tiff > lena_signature.der
