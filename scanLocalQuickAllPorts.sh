echo Stopping Firewall
iptables --flush
nmap -p 1-65535 192.168.43.1
echo Starting Firewall
./scripts/iptables.sh 2> /dev/null
