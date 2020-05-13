  ifconfig tun0 10.0.4.5 netmask 255.255.255.0
  route add -net 10.0.4.0/24 dev tun0
  route add -net 10.0.5.0/24 gw 10.0.4.1 dev tun0
sysctl -w net.ipv4.ip_forward=1
