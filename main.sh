#!/bin/bash
while :; do
echo "Welcome to Script CIS Debian 9 Compliance";
echo ""

#cat scripts/senha.txt; #example
echo "1 - Atualizar e Instalar pacotes necessários"
echo "2 - Iniciar os scripts de Hardening"
echo "3 - Scripts disponiveis"
echo "CTRL+C para sair"
echo "99 - Executa todos os scripts"
echo "1000 - Executa o Hardening Supremo"
echo ""

read -p "Execute uma opcao: " option
if [ $option -eq 1 ];
then
	echo "Bem vindo ao script de atualização"
	echo ""
	apt-get install sudo
	echo ""
	sudo su
	echo ""
	apt-get update
	echo ""
	apt-get dist-upgrade
	echo ""
	apt-get upgrade
	echo ""
	apt-get install ssh
	echo ""
	apt-get install ntp
	echo ""
	apt-get install network-manager
	echo ""
	apt-get install net-tools
	echo ""
elif [ $option -eq 2 ];
then	
	echo "Bem vindo ao Hardening"
	echo "Digite o nome do script com .sh no final"
	echo ""
	read -p "Digite o nome do script que vai usar: " option2
	bash scripts/$option2
elif [ $option -eq 3 ];
then 
	echo ""
	echo ""
	cat scripts/scripts.txt
	echo ""
	echo ""
elif [ $option -eq 99 ];
then
	bash scripts/aideinstall.sh
	bash scripts/aslrrandom.sh
	bash scripts/broadcasticmpdisable.sh
	bash scripts/coredump.sh
	bash scripts/crontabcheck.sh
	bash scripts/crontabpermission.sh
	bash scripts/ensuretmp.sh
	bash scripts/icmpredirectdisable.sh
	bash scripts/icmpredirectfiledisable.sh
	bash scripts/ipforwarddisable.sh
	bash scripts/ipredirectdisable.sh
	bash scripts/iproutedisable.sh
	bash scripts/iptablesipv6.sh
	bash scripts/modprobe.sh
	bash scripts/reversefilterenable.sh
	bash scripts/rmmod.sh
	bash scripts/shadowpermission.sh
	bash scripts/suspiciouspackets.sh
	bash scripts/check_duplicate_gid
	bash scripts/check_duplicate_groupname
	bash scripts/check_duplicate_uid
	bash scripts/check_duplicate_username
	bash scripts/check_user_homedir_ownership
	bash scripts/cron_weekly_perm_ownership
	bash scripts/remove_empty_password_field
	bash scripts/remove_legacy_passwd_entries
	bash scripts/remove_legacy_shadow_entries
	bash scripts/remove_legacy_group_entries
elif [ $option -eq 1000];
then
	echo "Iniciando o script supremo de auditoria"
	bash scripts/hardening2.sh --audit-all
else
	echo ""
	echo "Finish"
fi
done
