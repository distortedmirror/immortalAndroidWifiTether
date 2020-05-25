   iptables --flush
iptables -A INPUT -s 172.217.0.0/16 -p tcp --dport 443 -j ACCEPT
iptables -A INPUT -p tcp --sport 8008 -j DROP
iptables -A INPUT -p tcp --dport 8008 -j DROP
iptables -A INPUT -p tcp --sport 8009 -j DROP
iptables -A INPUT -p tcp --dport 8009 -j DROP
iptables -A INPUT -p tcp --dport 2302 -j ACCEPT
iptables -A INPUT -p udp --dport 2303 -j ACCEPT
iptables -A INPUT -p tcp --dport 9418 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j ACCEPT
iptables -A INPUT -p tcp --sport 9222 -j ACCEPT
iptables -A INPUT -p tcp --sport 9229 -j ACCEPT
#   iptables -A INPUT -p tcp --dport 67 -j ACCEPT
#   iptables -A INPUT -p tcp --dport 67 -j ACCEPT
#   iptables -A INPUT -p udp --dport 67 -j ACCEPT
#   iptables -A INPUT -s github.com -p tcp --sport 22 -j ACCEPT
iptables -A INPUT -s 40.121.213.9 -p tcp --sport 22 -j ACCEPT
 #  iptables -A INPUT -p tcp --sport 53 -j ACCEPT
 #  iptables -A INPUT -p tcp --sport 5353 -j ACCEPT
 #  iptables -A INPUT -p udp --sport 53 -j ACCEPT
 # iptables -A INPUT -p udp --sport 5353 -j ACCEPT
 # iptables -A INPUT -s 127.0.0.1 -p tcp --dport 53 -j ACCEPT
   iptables -A INPUT -s 127.0.0.1 -p tcp --dport 5353 -j ACCEPT
   iptables -A INPUT -s 127.0.0.1 -p udp --dport 53 -j ACCEPT
   iptables -A INPUT -s 127.0.0.1 -p udp --dport 5353 -j ACCEPT
   iptables -A INPUT -p tcp --dport 1235 -j ACCEPT
   iptables -A INPUT -p tcp --sport 1235 -j ACCEPT
   iptables -A INPUT -p tcp --dport 1236 -j ACCEPT
   iptables -A INPUT -p tcp --sport 1236 -j ACCEPT
   iptables -A INPUT -p tcp --dport 1235 -j ACCEPT
   iptables -A INPUT -p tcp --sport 9996 -j ACCEPT
   iptables -A INPUT -p tcp --sport 9995 -j ACCEPT
   iptables -A INPUT -p tcp --dport 9996 -j ACCEPT
   iptables -A INPUT -p tcp --dport 9995 -j ACCEPT
   iptables -A INPUT -s 192.168.43.1 -p tcp --sport 8022 -j ACCEPT
   iptables -A INPUT -s 192.168.43.1 -d 192.168.44.130 -p tcp --dport 443 -j ACCEPT
   iptables -A INPUT -s 10.110.45.48 -d 10.110.45.1 -p tcp --dport 443 -j ACCEPT
   iptables -A INPUT -d 192.168.43.130 -s 192.168.44.203 -p tcp --dport 443 -j ACCEPT
   iptables -A INPUT -s 192.168.43.1 -p tcp --sport 2222 -j ACCEPT
   iptables -A INPUT -s 192.168.44.1 -p tcp --sport 8022 -j ACCEPT
   iptables -A INPUT -s 192.168.44.1 -p tcp --sport 2222 -j ACCEPT
   iptables -A INPUT -p tcp -s 127.0.0.1 --dport 631 -j ACCEPT
   iptables -A INPUT -p udp -s 127.0.0.1 --dport 631 -j ACCEPT
   iptables -A INPUT -p udp -s 127.0.0.1 --dport 631 -j ACCEPT
#   iptables -A INPUT -p tcp -s 192.168.43.66 --dport 631 -j ACCEPT
 #  iptables -A INPUT -p tcp --sport 5555 -j ACCEPT
   iptables -A INPUT -p tcp --sport 8888 -j ACCEPT
#   iptables -A INPUT -p tcp --dport 8100 -j ACCEPT
#   iptables -A INPUT -p tcp --sport 8100 -j ACCEPT
#   iptables -A INPUT -p tcp --dport 8600 -j ACCEPT
#   iptables -A INPUT -p tcp --sport 8600 -j ACCEPT
#   iptables -A INPUT -p tcp --dport 8700 -j ACCEPT
#   iptables -A INPUT -p tcp --sport 8700 -j ACCEPT
#   iptables -A INPUT -p tcp --sport 5900 -j ACCEPT
#   iptables -A INPUT -p tcp --sport 5901 -j ACCEPT
#   iptables -A INPUT -p tcp --sport 3389 -j ACCEPT
#   iptables -A INPUT -p udp --sport 3389 -j ACCEPT
iptables -A INPUT -s 127.0.0.1 -p tcp --sport 9229 -j DROP
iptables -A INPUT -s 127.0.0.1 -p tcp --dport 9229 -j DROP
iptables -A INPUT -s 127.0.0.1 -j ACCEPT
#iptables -A INPUT -i wlp2s0 -m mac --mac-source e4:e1:30:08:a3:a0 -j ACCEPT
#iptables -A INPUT -i wlp2s0 -m mac --mac-source 3c:f0:11:49:26:2c -j ACCEPT
#iptables -A INPUT -i wlp2s0 -m mac --mac-source 04:d3:95:46:cc:f5 -j ACCEPT
   iptables -A INPUT -s 192.168.43.118 -j DROP
   iptables -A INPUT -s 192.168.43.143 -j DROP
   iptables -A INPUT -s 224.0.0.251 -j DROP #ACCEPT

   iptables -A INPUT -s 239.255.255.250  -j ACCEPT
   iptables -A INPUT -j DROP
iptables -A OUTPUT -s 172.217.0.0/16 -p tcp --sport 443 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 8008 -j DROP
iptables -A OUTPUT -p tcp --sport 8008 -j DROP
iptables -A OUTPUT -p tcp --dport 8009 -j DROP
iptables -A OUTPUT -p tcp --sport 8009 -j DROP
iptables -A OUTPUT -p tcp --sport 2302 -j ACCEPT
iptables -A OUTPUT -p udp --sport 2303 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 9418 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 9222 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 9229 -j ACCEPT
#   iptables -A OUTPUT -p tcp --sport 8100 -j ACCEPT
#   iptables -A OUTPUT -p tcp --dport 8100 -j ACCEPT
#   iptables -A OUTPUT -p tcp --sport 8600 -j ACCEPT
#   iptables -A OUTPUT -p tcp --dport 8600 -j ACCEPT
#   iptables -A OUTPUT -p tcp --sport 8700 -j ACCEPT
#   iptables -A OUTPUT -p tcp --dport 8700 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 443 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 443 -j ACCEPT
#   iptables -A OUTPUT -p tcp --sport 67 -j ACCEPT
#   iptables -A OUTPUT -p udp --sport 67 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 53 -j ACCEPT
   iptables -A OUTPUT -p udp --sport 53 -j ACCEPT
   iptables -A OUTPUT -p tcp --sport 5353 -j ACCEPT
   iptables -A OUTPUT -p udp --sport 5353 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 53 -j ACCEPT
#   iptables -A OUTPUT -p udp --dport 53 -j ACCEPT
#   iptables -A OUTPUT -p tcp --dport 5353 -j ACCEPT
#   iptables -A OUTPUT -p udp --dport 5353 -j ACCEPT
#   iptables -A OUTPUT -d github.com -p tcp --dport 22 -j ACCEPT
iptables -A OUTPUT -d 40.121.213.9 -p tcp --dport 22 -j ACCEPT
   iptables -A OUTPUT -p tcp --sport 1235 -j ACCEPT
   iptables -A OUTPUT -p tcp --dport 1235 -j ACCEPT
   iptables -A OUTPUT -p tcp --sport 1236 -j ACCEPT
   iptables -A OUTPUT -p tcp --dport 1236 -j ACCEPT
   iptables -A OUTPUT -p tcp --dport 9996 -j ACCEPT
   iptables -A OUTPUT -p tcp --dport 9995 -j ACCEPT
   iptables -A OUTPUT -p tcp --sport 9996 -j ACCEPT
   iptables -A OUTPUT -p tcp --sport 9995 -j ACCEPT
   iptables -A OUTPUT -s 192.168.43.130 -d 192.168.43.1 -p tcp --dport 8022 -j ACCEPT
   iptables -A OUTPUT -s 10.110.45.1 -d 10.110.45.48 -p tcp --sport 443 -j ACCEPT
   iptables -A OUTPUT -d 192.168.44.203 -p tcp --sport 443 -j ACCEPT
   iptables -A OUTPUT -d 192.168.44.1 -p tcp --sport 443 -j ACCEPT
   iptables -A OUTPUT -d 192.168.43.1 -p tcp --dport 2222 -j ACCEPT
   iptables -A OUTPUT -d 192.168.44.1 -p tcp --dport 8022 -j ACCEPT
   iptables -A OUTPUT -d 192.168.44.1 -p tcp --dport 2222 -j ACCEPT
   iptables -A OUTPUT -p tcp -d 127.0.0.1 --sport 631 -j ACCEPT
   iptables -A OUTPUT -p udp -d 127.0.0.1 --sport 631 -j ACCEPT   
#   iptables -A OUTPUT -p tcp -d 192.168.43.66 --sport 631 -j ACCEPT

#   iptables -A OUTPUT -p tcp --dport 5555 -j ACCEPT
   iptables -A OUTPUT -p tcp --dport 8888 -j ACCEPT
#   iptables -A OUTPUT -p tcp --dport 5900 -j ACCEPT
#   iptables -A OUTPUT -p tcp --dport 5901 -j ACCEPT
#   iptables -A OUTPUT -p tcp --dport 3389 -j ACCEPT
#   iptables -A OUTPUT -p udp --dport 3389 -j ACCEPT
#iptables -A OUTPUT -i wlp2s0 -m mac  -j ACCEPT
iptables -A OUTPUT -d 127.0.0.1 -p tcp --sport 9229 -j DROP
iptables -A OUTPUT -d 127.0.0.1 -p tcp --dport 9229 -j DROP
iptables -A OUTPUT -d 127.0.0.1 -j ACCEPT
   iptables -A OUTPUT -d 192.168.43.118 -j DROP
   iptables -A OUTPUT -d 192.168.43.143 -j DROP
   iptables -A OUTPUT -d 224.0.0.251 -j DROP #ACCEPT
   iptables -A OUTPUT -d 239.255.255.250  -j ACCEPT
   iptables -A OUTPUT -j DROP
   iptables -L
