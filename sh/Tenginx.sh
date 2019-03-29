yum install gcc gcc++ openssl-devel pcre-devel zlib-devel
wget http://tengine.taobao.org/download/tengine-2.3.0.tar.gz
tar -zxvf tengine-2.3.0.tar.gz
cd tengine-2.3.0
./configure
make
sudo make install
cd
rm -rf tengine*
rm -rf Tengine.sh
