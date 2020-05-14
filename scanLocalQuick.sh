echo Scan Proxy
echo
echo Stop Firewall
iptables --flush 2>/dev/null >/dev/null
nmap -sV -T4 -F --version-light 192.168.43.1
echo Start Firewall
./scripts/iptables.sh 2>/dev/null >/dev/null
