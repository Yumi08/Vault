#!/bin/bash
set -e

if [ ! -d Data/ ] ; then
    echo "ERROR: Data directory not present!"
    exit 1
fi

NOW=$(date +'%Y-%m-%d-%H-%M-%S')

echo "Packing..."
tar czf Data.tar.gz Data/

echo "Encrypting..."
gpg -c Data.tar.gz

if [ ! -f Data.tar.gz.gpg ] ; then
    echo "ERROR: No data.tar.gz.gpg file created."
    srm -rfE Data.tar.gz
    exit 1
fi

echo "Backing up to Backup/$NOW.tar.gz.gpg..."
cp Data.tar.gz.gpg "./Backup/$NOW.tar.gz.gpg"

echo "Cleaning..."
srm -rfE Data
srm -rfE Data.tar.gz

echo "Done!"
