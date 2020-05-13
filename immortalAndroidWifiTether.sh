echo Immortal Android WIFI Tether
echo ----------------------------
echo Make sure the server is up and that the Android is running ./tetherwifi.sh
echo
echo Local Android Scan
./scanlocalquick.sh
echo
echo Server Scan
./scanserverquick.sh
cd scripts
export STARTWAITINSECONDS=3
export HEARTBEATTIMEINSECONDS=5
export TCPPORTSTOSCANFORLISTEN="8888 5900 5037 9996 9995 5800 3389"
export NAME="immortaltetherwifi.sh"
export EMAILS="mark.brito@gmail.com;mark.brito.gcloud@gmail.com"
export IMMORTALPASSWORD
export SCAN="n"
#echo -n "Scan Server and Proxy (y/n)? "
#read SCAN 
perl -e 'print "Password: ";';
read -s IMMORTALPASSWORD
./monitor.sh $STARTWAITINSECONDS $HEARTBEATTIMEINSECONDS "$TCPPORTSTOSCANFORLISTEN" "./beepup.sh" './beepdown.sh;echo Starting tetherwifi.sh...;perl -e "print \"\$ENV{'"'"'SCAN'"'"'}\\n\$ENV{'"'"'IMMORTALPASSWORD'"'"'}\\n\";"|./tetherwifi.sh' 'echo Starting tetherwifi.sh...;perl -e "print \"\$ENV{'"'"'SCAN'"'"'}\\n\$ENV{'"'"'IMMORTALPASSWORD'"'"'}\\n\";"|./tetherwifi.sh' 'echo Stopping tetherwifi...'
echo Press Enter to Exit
read
