wgte http://tengine.taobao.org/download/tengine-2.2.3.tar.gz
yum -y install gcc openssl-devel pcre-devel zlib-devel
tar -zxvf tengine-2.2.3.tar.gz
cd tengine-2.2.3.tar.gz
./configure
make
sudo make install
cd
rm -rf tengine*
