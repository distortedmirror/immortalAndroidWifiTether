#proxychains4 krdc rdp://mark@40.121.213.9
echo Please choose a resolution
echo A. 1366x768
echo B. 1920x1080
perl -e 'print "Ether Selection (A,B): ";'
read selection
if [ "$selection" = "a" -o "$selection" = "A" ]; then
  echo Ctrl-Alt-ENTER to toggle fullscreen
  xfreerdp  /u:mark /smart-sizing:1366x768 /v:127.0.0.1:3389 /f
fi
if [ "$selection" = "b" -o "$selection" = "B" ]; then
  echo Ctrl-Alt-ENTER to toggle fullscreen
  xfreerdp  /u:mark /smart-sizing:1920x1080 /v:127.0.0.1:3389 /f
fi
