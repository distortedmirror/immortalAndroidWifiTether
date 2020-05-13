echo Scan Proxy
echo
echo Stop Firewall
iptables --flush
nmap -sV -T4 -F --version-light 192.168.43.1
echo Start Firewall
./scripts/iptables.sh
