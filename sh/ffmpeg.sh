#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

runPath="/root"

Install_yasm()
{
	cd ${runPath}
	wget http://www.tortall.net/projects/yasm/releases/yasm-1.3.0.tar.gz
	tar -xzvf yasm-1.3.0.tar.gz
	cd yasm-1.3.0
	./configure
	make
	make install
	cd ..
	rm -rf yasm*
}
Install_lame()
{
	cd ${runPath}
	wget http://jaist.dl.sourceforge.net/project/lame/lame/3.99/lame-3.99.5.tar.gz
	tar -xzvf lame-3.99.5.tar.gz
	cd lame-3.99.5
	./configure
	make
	make install
	cd ..
	rm -rf lame*
}
Install_amr()
{
	cd ${runPath}
	wget http://downloads.sourceforge.net/project/opencore-amr/opencore-amr/opencore-amr-0.1.3.tar.gz
	tar -xzvf opencore-amr-0.1.3.tar.gz
	cd opencore-amr-0.1.3
	./configure
	make
	make install
	cd ..
	rm -rf opencore-amr*
}
Install_amrnb()
{
	cd ${runPath}
	wget http://www.penguin.cz/~utx/ftp/amr/amrnb-11.0.0.0.tar.bz2
	tar -xjvf amrnb-11.0.0.0.tar.bz2
	cd amrnb-11.0.0.0
	./configure
	make
	make install
	cd .. 
	rm -rf amrnb*
}
Install_amrwb()
{
	cd ${runPath}
	wget http://www.penguin.cz/~utx/ftp/amr/amrwb-11.0.0.0.tar.bz2
	tar -xjvf amrwb-11.0.0.0.tar.bz2
	cd amrwb-11.0.0.0
	./configure
	make
	make install
	cd ..
	rm -rf amrwb*
}
Install_ffmpeg()
{
	cd ${runPath}
	wget http://ffmpeg.org/releases/ffmpeg-4.1.tar.bz2
	tar -xjvf ffmpeg-4.1.tar.bz2
	cd ffmpeg-4.1
	./configure --enable-libmp3lame --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-version3 --enable-shared
	make
	make install
	cd ..
	rm -rf ffmpeg*
	ldconfig
}
Install_yasm
Install_lame
Install_amr
Install_amrnb
Install_amrwb
Install_ffmpeg
