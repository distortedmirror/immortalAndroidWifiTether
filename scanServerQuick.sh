echo Quick Server Scan
echo
echo Stopping Firewall
iptables --flush
nmap -sV -T4 -F --version-light 40.121.213.9
echo Starting Firewall
./scripts/iptables.sh
