#!/bin/sh

set -e

command -v "bpftool"

if [ -f "/sys/kernel/btf/vmlinux" ]
then
	bpftool btf dump file "${1:-/sys/kernel/btf/vmlinux}" format c > vmlinux.h
else
	echo "${0##*/}: btf file doesn't exists!"
	exit 1
fi
echo "done."
