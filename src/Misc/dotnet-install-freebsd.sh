#!/usr/bin/env bash

set -ex

INSTALL_DIR=$1
URL=https://people.freebsd.org/~gonzo/dotnet/seed/dotnet-sdk-3.1.100-freebsd-x64.tar.gz
TMPFILE=$(mktemp -u)
TMPFILE=/home/gonzo/src/runner/src/dotnet-sdk-3.1.100-freebsd-x64.tar.gz
wget -t0 -c -O $TMPFILE $URL
mkdir -p "$INSTALL_DIR"
tar -C "$INSTALL_DIR" -x -z -f $TMPFILE
