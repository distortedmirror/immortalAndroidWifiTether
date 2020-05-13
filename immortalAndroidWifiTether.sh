echo Immortal Android WIFI Tether
echo ----------------------------
echo Make sure the server is up and that the Android is running ./tetherwifi.sh
echo
./scanLocalQuick.sh
echo
./scanServerQuick.sh
cd scripts
export STARTWAITINSECONDS=3
export HEARTBEATTIMEINSECONDS=5
export TCPPORTSTOSCANFORLISTEN="8888 5900 5037 9996 9995 5800 3389"
export NAME="immortaltetherwifi.sh"
export EMAILS="mark.brito@gmail.com;mark.brito.gcloud@gmail.com"
export IMMORTALPASSWORD
export SCAN="n"
export SECONDSTODUMPCAP=21
export STARTDUMPCAP=`date +"%s"`
export ENDDUMPCAP=`date +"%s"`
#echo -n "Scan Server and Proxy (y/n)? "
#read SCAN 
perl -e 'print "Password: ";';
read -s IMMORTALPASSWORD
./monitor.sh $STARTWAITINSECONDS $HEARTBEATTIMEINSECONDS "$TCPPORTSTOSCANFORLISTEN" "./beepup.sh;killall dumpcap 2>/dev/null;dumpcap -w ./pcapng/dumpcap.pcapng >/dev/null 2>/dev/null;" './beepdown.sh;killall dumpcap 2>/dev/null;ps axjf > ./pcapng/`date|sed -e '"'"'s/[ :]/_/ig'"'"'`.ps;mv ./pcapng/dumpcap.pcapng ./pcapng/`date|sed -e '"'"'s/[ :]/_/ig'"'"'`.pcapng;echo Starting tetherwifi.sh...;perl -e "print \"\$ENV{'"'"'SCAN'"'"'}\\n\$ENV{'"'"'IMMORTALPASSWORD'"'"'}\\n\";"|./tetherwifi.sh' 'killall dumpcap 2>/dev/null;dumpcap -w ./pcapng/dumpcap.pcapng >/dev/null 2>/dev/null;echo Starting tetherwifi.sh...;perl -e "print \"\$ENV{'"'"'SCAN'"'"'}\\n\$ENV{'"'"'IMMORTALPASSWORD'"'"'}\\n\";"|./tetherwifi.sh' 'echo Stopping tetherwifi...' 'export ENDDUMPCAP=`date +"%s"`;export DIFF=`perl -e '"'"'print $ENV{'"'"'"'"'"'"'"'"'ENDDUMPCAP'"'"'"'"'"'"'"'"'}-$ENV{'"'"'"'"'"'"'"'"'STARTDUMPCAP'"'"'"'"'"'"'"'"'};'"'"'`;if [ $DIFF -ge $SECONDSTODUMPCAP ]; then export STARTDUMPCAP=$ENDDUMPCAP;killall dumpcap 2>/dev/null; dumpcap -w ./pcapng/dumpcap.pcapng >/dev/null 2>/dev/null;fi;'
echo Press Enter to Exit
read
