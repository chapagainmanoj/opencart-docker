#!/bin/bash -e

## todo: in dir /bitnami/storage ../system/
# find ./bitnami/opencart/system/storage/cache/ ! -name 'index.html' -type f -exec rm -f -r {} +

shopt -s extglob
rm -r -- !(file.txt)
