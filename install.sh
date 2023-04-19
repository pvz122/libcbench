#! /bin/bash

# test if tar is installed
if ! [ -x "$(command -v tar)" ]; then
    echo "Error: tar is not installed." >&2
    exit 1
fi

# test if patchelf is installed
if ! [ -x "$(command -v patchelf)" ]; then
    echo "Error: patchelf is not installed." >&2
    exit 1
fi

# check root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit
fi

echo "Installing libcbench..."

# mkdir /opt/libcbench
mkdir /opt/libcbench

# untar glibc.tar.gz to /opt/libcbench/glibc
mkdir /opt/libcbench/glibc
tar -xzvf glibc.tar.gz -C /opt/libcbench/glibc

# copy libcbench and libcset to /opt/libcbench/libcset
cp libcset /opt/libcbench/libcset
cp libcbench /opt/libcbench/libcbench

# make libcbench and libcset executable
chmod +x /opt/libcbench/libcset
chmod +x /opt/libcbench/libcbench

# create symlinks to libcbench and libcset in /usr/local/bin
ln -s /opt/libcbench/libcbench /usr/local/bin/libcbench
ln -s /opt/libcbench/libcset /usr/local/bin/libcset

echo "Done."
