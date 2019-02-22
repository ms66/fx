yum install ImageMagick -y
cd
wget http://www.tortall.net/projects/yasm/releases/yasm-1.3.0.tar.gz
tar -xzvf yasm-1.3.0.tar.gz
cd yasm-1.3.0
./configure
make
make install
cd
rm -rf yasm*
cd
wget http://ffmpeg.org/releases/ffmpeg-4.1.tar.gz
tar -xzvf ffmpeg-4.1.tar.gz
cd ffmpeg-4.1
./configure
make
make install
cd
rm -rf ffmpeg*
ffmpeg -version
