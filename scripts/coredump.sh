#!/bin/bash
echo "Garantir que o coredump esta restrito"
sysctl -w fs.suid_dumpable=0

