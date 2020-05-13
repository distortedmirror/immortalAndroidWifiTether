echo Cleaning Up
killall autossh 2> /dev/null
killall nmap 2> /dev/null
killall expect 2> /dev/null
echo Server Scan
nmap webstore.eastus.cloudapp.azure.com
echo Login to Server
./passwordwifi.exp
