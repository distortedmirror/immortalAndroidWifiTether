iptables --flush
nmap -sV -T4 -F --version-light 192.168.43.1
./scripts/iptables.sh
