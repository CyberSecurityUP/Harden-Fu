#!/bin/bash
echo "Desabilitar trafego ipv6"
ip6tables -P INPUT DROP
ip6tables -P OUTPUT DROP
ip6tables -P FORWARD DROP
