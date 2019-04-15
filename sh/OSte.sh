clear
next
echo -e "CPU型号           : ${BLUE}$cname${PLAIN}"
echo -e "核心数量          : ${BLUE}$cores${PLAIN}"
echo -e "CPU频率           : ${BLUE}$freq MHz${PLAIN}"
echo -e "磁盘总大小        : ${BLUE}$disk_total_size GB ($disk_used_size GB Used)${PLAIN}"
echo -e "内存总量          : ${BLUE}$tram MB ($uram MB Used)${PLAIN}"
echo -e "交换总量          : ${BLUE}$swap MB ($uswap MB Used)${PLAIN}"
echo -e "系统正常运行时间  : ${BLUE}$up${PLAIN}"
echo -e "负载平均值        : ${BLUE}$load${PLAIN}"
echo -e "操作系统          : ${BLUE}$opsy${PLAIN}"
echo -e "Arch              : ${BLUE}$arch ($lbit Bit)${PLAIN}"
echo -e "内核              : ${BLUE}$kern${PLAIN}"
next
io1=$( io_test )
echo -e "I / O速度（第1次运行）    : ${YELLOW}$io1${PLAIN}"
io2=$( io_test )
echo -e "I / O速度（第2次运行）    : ${YELLOW}$io2${PLAIN}"
io3=$( io_test )
echo -e "I / O速度（第3次运行）    : ${YELLOW}$io3${PLAIN}"
ioraw1=$( echo $io1 | awk 'NR==1 {print $1}' )
[ "`echo $io1 | awk 'NR==1 {print $2}'`" == "GB/s" ] && ioraw1=$( awk 'BEGIN{print '$ioraw1' * 1024}' )
ioraw2=$( echo $io2 | awk 'NR==1 {print $1}' )
[ "`echo $io2 | awk 'NR==1 {print $2}'`" == "GB/s" ] && ioraw2=$( awk 'BEGIN{print '$ioraw2' * 1024}' )
ioraw3=$( echo $io3 | awk 'NR==1 {print $1}' )
[ "`echo $io3 | awk 'NR==1 {print $2}'`" == "GB/s" ] && ioraw3=$( awk 'BEGIN{print '$ioraw3' * 1024}' )
ioall=$( awk 'BEGIN{print '$ioraw1' + '$ioraw2' + '$ioraw3'}' )
ioavg=$( awk 'BEGIN{printf "%.1f", '$ioall' / 3}' )
echo -e "平均I / O速度             : ${YELLOW}$ioavg MB/s${PLAIN}"
next
rm -rf OStest.sh
