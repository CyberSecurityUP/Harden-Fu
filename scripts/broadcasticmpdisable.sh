#!/bin/bash
echo "Desabilitar as requisicoes de broadcast"
sysctl -w net.ipv4.icmp_echo_ignore_broadcasts=1
sysctl -w net.ipv4.route.flush=1
