#!/bin/sh
#喜欢记得收藏一下 www.luss.vip
PATH=$PATH:/sbin:/usr/sbin:/usr/local/sbin:$HOME/bin:/usr/local/bin:/usr/bin
export PATH
export LANG=en_US.UTF-8

yum -y install epel-release
yum -y install net-tools

curl -o /tmp/tcpatar.gz http://down.08mb.com/tcp_opz/tcpa/tcpa_packets_180619_1151.tar.gz
chmod +x /etc/rc.d/rc.local
cat>>/etc/rc.local<<EOF
####tcpa####
cd /tmp/
tar xf tcpa.tar.gz
cd tcpa_packets
sh install.sh
cd /usr/local/storage/tcpav2
sh start.sh
lsmod|grep tcpa
rm -f /tmp/tcpa_packets_180619_1151.tar.gz
rm -rf /tmp/tcpa_packets
sed -i '/####tcpa####/','/####tcpa####/d' /etc/rc.local
####tcpa####
EOF

rpm -ivh http://down.08mb.com/tcp_opz/tcpa/kernel.rpm --force
echo "内核安装完毕,3秒后将自动重启..."
echo "重启后安装自动完成,lsmod|grep tcpa查看是否开启成功."
sleep 3
reboot
