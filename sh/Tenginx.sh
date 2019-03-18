yum install gcc openssl-devel pcre-devel zlib-devel
wget http://tengine.taobao.org/download/tengine-2.2.3.tar.gz
tar -zxvf tengine-2.2.3.tar.gz
cd tengine-2.2.3.tar.gz
./configure
make
sudo make install
cd
rm -rf tengine*
