# immortalAndroidWifiTether
Immortal Android WiFi Tether Process (Reconnect / Re-Authenticate / Audit / Debug)

My internet connection in a rural are was unreliable and I wanted to automate the manual process of entering passwords and reconnecting as it got repetitive. I also wanted to find out why it is unreliable.  This program detects if the internet is down and attempts to re-connect. Also, it captures the last 15 seconds of network traffic prior to a disconnect as well as the current processes at the time of the disconnect, and you can easily add different actions to capture auditing and debugging information. It also enables you to enter your password once and it will reconnect with the same credentials. You configure it via constants in immortalAndroid.sh and other files. To start program run on the android: 

./immortalAndroidWifiTetherAndroid.sh

Then run on the linux box:

./immortalAndroidWifiTether.sh


CONFIGURATION

./monitor.sh [START WAIT SECONDS] [HEART BEAT TIME SECONDS] [PORT LIST IN QUOTES] [UPACTION] [DOWNACTION] [STARTACTION] [STOPACTION] 
In immortalAndroidWifiTether.sh you configure the actions to start the application (STARTACTION), and the actions when you stop the application (STOPACTION), or when the internet goes down (DOWNACTION) or internet goes up (UPACTION).  You also specify a port list in the TCPPORTSTOSCANFORLISTEN and wait times when starting and how often to check the connectivity.

It enables you to enter a password once and retrys with the same credentials.

export STARTWAITINSECONDS=3
export HEARTBEATTIMEINSECONDS=5
export TCPPORTSTOSCANFORLISTEN="8888 5900 5037 9996 9995 5800 3389"
export NAME="immortaltetherwifi.sh"
export EMAILS="mark.brito@gmail.com;mark.brito.gcloud@gmail.com"
./monitor.sh $STARTWAITINSECONDS $HEARTBEATTIMEINSECONDS "$TCPPORTSTOSCANFORLISTEN" "./beepup.sh" './beepdown.sh;echo Starting tetherwifi.sh...;perl -e "print \"\$ENV{'"'"'SCAN'"'"'}\\n\$ENV{'"'"'IMMORTALPASSWORD'"'"'}\\n\";"|./tetherwifi.sh' 'echo Starting tetherwifi.sh...;perl -e "print \"\$ENV{'"'"'SCAN'"'"'}\\n\$ENV{'"'"'IMMORTALPASSWORD'"'"'}\\n\";"|./tetherwifi.sh' 'echo Stopping tetherwifi...'
echo Press Enter to Exit
read


TODO

Some variables are currently hardcoded and need to be centralized.
Need to add feature to stop the same email over and over again
Add feature that tells me what is wrong
Email script
Restart and Recover script
Add ImmortalTether.sh ImmortalMonitor.sh TetherAndroidWifi.sh
Document
Make UI for product
Market and Sell
