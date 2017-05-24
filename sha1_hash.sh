#!/bin/bash
# Author: Carlo Raquel
# CS 253 OpenSSL Project
# Script Description: Hash the Lena image (lena512color.tiff) using SHA1.
# Input file: lena512color.tiff
# Output file: hash value

openssl dgst -sha1 lena512color.tiff
