#!/bin/bash
echo "Garantir o ASLR habilitado"
sysctl -w kernel.randomize_va_space=2
