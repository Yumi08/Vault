#!/bin/bash
set -e

cd "$(dirname "$0")"

if [ ! -f Data.tar.gz.gpg ] ; then
    echo "ERROR: Data.tar.gz.gpg is not present!"
    exit 1
fi

echo "Decrypting..."
gpg --output Data.tar.gz --decrypt Data.tar.gz.gpg

echo "Unpacking..."
tar xzf Data.tar.gz

if [ ! -d Data/ ] ; then
    echo "ERROR: No Data folder created"
    exit 1
fi

echo "Cleaning..."
srm -rfE Data.tar.gz
srm -rfE Data.tar.gz.gpg

echo "Done!"
