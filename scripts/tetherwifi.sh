echo Cleaning Up
killall autossh 2> /dev/null
killall autossh 2> /dev/null
killall autossh 2> /dev/null
killall nmap  2> /dev/null
killall nmap  2> /dev/null
killall nmap  2> /dev/null
killall expect 2> /dev/null
killall expect 2> /dev/null
killall expect 2> /dev/null
killall dhclient 2> /dev/null
iptables --flush
echo -n "Scan Server and Proxy (y/n)? "
read scanyn
if [ "$scanyn" = "y" -o "scanyn" = "Y" ]; then 
echo Stopping Firewall
echo Setting up DNS Resolver
./dnsfix.sh
iptables --flush
echo Scanning Server
nmap webstore.eastus.cloudapp.azure.com 
echo Scanning Proxy Server
nmap 192.168.43.1
echo Starting Firewall
./iptables.sh
fi
perl -e 'print "Password: ";';
read -s pass
echo
echo Running SSH in Background
./password.exp $pass
