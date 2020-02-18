#!/bin/bash
echo "Desabilitar serviços modprobe"
touch /etc/modprobe.d/dccp.conf
echo "install dccp /bin/true" >> /etc/modprobe.d/dccp.conf
touch /etc/modprobe.d/sctp.conf
echo "install sctp /bin/true" >> /etc/modprobe.d/sctp.conf
touch /etc/modprobe.d/rds.conf
echo "install rds /bin/true" >> /etc/modprobe.d/rds.conf
touch /etc/modprobe.d/tipc.conf
echo "install tipc /bin/true" >> /etc/modprobe.d/tipc.conf

