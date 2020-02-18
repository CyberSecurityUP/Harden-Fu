#!/bin/bash
echo "Configurar partição /tmp com seguranca"
mount -o remount,nodev,nosuid,noexec /tmp
mount -o remount,nodev,nosuid,noexec /var/tmp
