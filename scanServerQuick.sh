echo Quick Server Scan
echo
echo Stopping Firewall
iptables --flush 2>/dev/null > /dev/null
nmap 40.121.213.9
echo Starting Firewall
./scripts/iptables.sh 2>/dev/null > /dev/null
