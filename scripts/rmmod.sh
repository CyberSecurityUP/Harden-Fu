#!/bin/bash
echo "Ensure mounting"
echo ""
touch /etc/modprobe.d/freevxfs.conf
echo "install freevxfs /bin/true" >> /etc/modprobe.d/freevxfs.conf
rmmod freevxfs
touch /etc/modprobe.d/jffs2.conf
echo "install jffs2 /bin/true" >> /etc/modprobe.d/jffs2.conf
rmmod jffs2
touch /etc/modprobe.d/hfs.conf
echo "install hfs /bin/true" >> /etc/modprobe.d/hfs.conf
rmmod hfs
touch /etc/modprobe.d/hfsplus.conf
echo "install hfsplus /bin/true" >> /etc/modprobe.d/hfsplus.conf
rmmod hfsplus
touch /etc/modprobe.d/udf.conf
echo "install udf /bin/true" >> etc/modprobe.d/udf.conf 
rmmod udf

