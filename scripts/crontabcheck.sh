#!/bin/bash
echo "Checagem regular de integridade de arquivos de sistemas"
crontab -u root -e
echo ""
echo "Adicione essa linha no crontab"
echo "0 5 * * * /usr/bin/aide --config /etc/aide/aide.conf --check
