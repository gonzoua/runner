#!/usr/bin/env bash

set -e

INSTALL_DIR=$1
URL=https://people.freebsd.org/~gonzo/dotnet/seed/dotnet-sdk-3.1.100-freebsd-x64.tar.gz
TMPFILE=$(mktemp -u)
wget -t0 -c -O $TMPFILE $URL
mkdir -p "$INSTALL_DIR"
tar -C "$INSTALL_DIR" -x -z -f $TMPFILE
rm -f $TMPFILE
