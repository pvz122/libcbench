#! /bin/bash

# check root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit
fi

rm -rf /opt/libcbench
rm /usr/local/bin/libcbench /usr/local/bin/libcset
