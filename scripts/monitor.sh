if [ "$1" = "" -o "$2" = "" -o "$3" = "" -o "$4" = "" -o "$5" = "" -o "$6" = "" -o "$7" = "" -o "$8" = "" ]; then
  echo ./monitor.sh [START WAIT SECONDS] [HEART BEAT TIME SECONDS] [PORT LIST IN QUOTES] [UPACTION] [DOWNACTION] [STARTACTION] [STOPACTION] [BEATOPTION]
  echo Note that \$TITLE and \$MESSAGE are special environment variables you can add in the ACTIONS arguments.
 echo "Example: ./monitor.sh 10 15 \"21 80 443\" './emaildown.sh email@domain.com \"\$TITLE\" \"\$MESSAGE\";./restart.sh' './emailup.sh email@domain.com \"Server Up\" \"\$MESSAGE\"' './start.sh' './stop.sh'" "date;"
  exit 1
fi
export ACTIONSLEEP=8
export STARTWAITMONITORSECONDS=$1
export HEARTBEATTIMEINSECONDS=$2
export TCPPORTSTOSCANFORLISTEN=$3
export UPACTION=$4
export DOWNACTION=$5
export STARTACTION=$6
export STOPACTION=$7
export BEATACTION=$8
export port
export timestamp="`date`"
export down=0
export prevdown=0
export TITLE=""
export MESSAGE=""
export ACTION=""
function ctrl_c() {
  echo Executing STOPACTION
  echo $STOPACTION
  bash -c "$STOPACTION" &
  sleep $ACTIONSLEEP 
  killall sleep 2> /dev/null
  killall sleep 2> /dev/null
  killall sleep 2> /dev/null
  exit 0 
}
trap ctrl_c INT
echo Monitoring TCP LISTEN ports $TCPPORTSTOSCANFORLISTEN
echo Waiting for $STARTWAITMONITORSECONDS seconds to start...
sleep $STARTWAITMONITORSECONDS 
export TITLE="STARTACTION"
export MESSAGE=`perl -e 'print "Starting Monitoring at $ENV{'timestamp'}\n";'` 
echo Executing STARTACTION
echo $STARTACTION
bash -c "$STARTACTION" &
sleep $ACTIONSLEEP 
while true; do
 echo | ./openTCPUDPPortslSOF.sh > openports.txt
 rm message.txt 2> /dev/null
 touch message.txt
 for port in `echo $TCPPORTSTOSCANFORLISTEN`; do
  export listen="`cat openports.txt|grep \"TCP localhost.$port .LISTEN\"|wc -l`"
  if [ "$listen" = "0" ]; then
    export timestamp="`date`"
    if [ "$down" = "0" ]; then
      echo
    fi
    export MESSAGE=`perl -e 'print "Port $ENV{'port'} Down at $ENV{'timestamp'}\n";'`
    echo $MESSAGE
    echo $MESSAGE >> message.txt
    down=1
  fi
 done
 if [ "$down" = "1" ]; then
   down=0
   prevdown=1
   export TITLE="DOWNACTION"
   export MESSAGE="`cat message.txt`"
   echo Executing DOWNACTION
   echo $DOWNACTION
   bash -c "$DOWNACTION" & 
   sleep $ACTIONSLEEP 
 elif [ "$down" = "0" -a "$prevdown" = "1" ]; then
   prevdown=0
   export TITLE="UPACTION"
   export MESSAGE="`cat message.txt`"
   echo Executing UPACTION
   echo $UPACTION
   bash -c "$UPACTION" &
   sleep $ACTIONSLEEP 
 fi
 sleep $HEARTBEATTIMEINSECONDS
 perl -e 'print ".";'
   bash -c "$BEATACTION" &
   sleep $ACTIONSLEEP 
done
exit 0
