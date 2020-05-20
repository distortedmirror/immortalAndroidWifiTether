   iptables --flush
#   iptables -A INPUT -p tcp --dport 67 -j ACCEPT
#   iptables -A INPUT -p udp --dport 67 -j ACCEPT
#   iptables -A INPUT -p tcp --sport 22 -j ACCEPT
#   iptables -A INPUT -p tcp --sport 53 -j ACCEPT
#   iptables -A INPUT -p tcp --sport 5353 -j ACCEPT
#   iptables -A INPUT -p udp --sport 53 -j ACCEPT
 #  iptables -A INPUT -p udp --sport 5353 -j ACCEPT
 #  iptables -A INPUT -p tcp --sport 53 -j ACCEPT
 #  iptables -A INPUT -p tcp --dport 5353 -j ACCEPT
 #  iptables -A INPUT -p udp --dport 53 -j ACCEPT
   #  iptables -A INPUT -p udp --dport 5353 -j ACCEPT
   iptables -A INPUT -p tcp --sport 9996 -j ACCEPT
   iptables -A INPUT -p tcp --sport 9995 -j ACCEPT
   iptables -A INPUT -p tcp --dport 9996 -j ACCEPT
   iptables -A INPUT -p tcp --dport 9995 -j ACCEPT
   iptables -A INPUT -s 192.168.43.1 -p tcp --sport 8022 -j ACCEPT
   iptables -A INPUT -s 192.168.43.1 -p tcp --sport 2222 -j ACCEPT
   iptables -A INPUT -p tcp -s 127.0.0.1 --dport 631 -j ACCEPT
   iptables -A INPUT -p udp -s 127.0.0.1 --dport 631 -j ACCEPT
   iptables -A INPUT -p udp -s 127.0.0.1 --dport 631 -j ACCEPT
#   iptables -A INPUT -p tcp -s 192.168.43.66 --dport 631 -j ACCEPT
 #  iptables -A INPUT -p tcp --sport 5555 -j ACCEPT
#   iptables -A INPUT -p tcp --sport 8888 -j ACCEPT
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
iptables -A INPUT -p tcp --sport 8008 -j DROP
iptables -A INPUT -p tcp --dport 8008 -j DROP
iptables -A INPUT -p tcp --sport 8009 -j DROP
iptables -A INPUT -p tcp --dport 8009 -j DROP
iptables -A INPUT -s 127.0.0.1 -j ACCEPT
#iptables -A INPUT -i wlp2s0 -m mac --mac-source e4:e1:30:08:a3:a0 -j ACCEPT
#iptables -A INPUT -i wlp2s0 -m mac --mac-source 3c:f0:11:49:26:2c -j ACCEPT
#iptables -A INPUT -i wlp2s0 -m mac --mac-source 04:d3:95:46:cc:f5 -j ACCEPT
   iptables -A INPUT -s 192.168.43.118 -j DROP
   iptables -A INPUT -s 192.168.43.143 -j DROP
   iptables -A INPUT -s 224.0.0.251 -j DROP #ACCEPT

   iptables -A INPUT -s 239.255.255.250  -j ACCEPT
   iptables -A INPUT -j DROP
#   iptables -A OUTPUT -p tcp --sport 8100 -j ACCEPT
#   iptables -A OUTPUT -p tcp --dport 8100 -j ACCEPT
#   iptables -A OUTPUT -p tcp --sport 8600 -j ACCEPT
#   iptables -A OUTPUT -p tcp --dport 8600 -j ACCEPT
#   iptables -A OUTPUT -p tcp --sport 8700 -j ACCEPT
#   iptables -A OUTPUT -p tcp --dport 8700 -j ACCEPT
#   iptables -A OUTPUT -p tcp --sport 67 -j ACCEPT
#   iptables -A OUTPUT -p udp --sport 67 -j ACCEPT
#iptables -A OUTPUT -p tcp --sport 53 -j ACCEPT
#   iptables -A OUTPUT -p udp --sport 53 -j ACCEPT
#   iptables -A OUTPUT -p tcp --sport 5353 -j ACCEPT
#   iptables -A OUTPUT -p udp --sport 5353 -j ACCEPT
#iptables -A OUTPUT -p tcp --dport 53 -j ACCEPT
#   iptables -A OUTPUT -p udp --dport 53 -j ACCEPT
#   iptables -A OUTPUT -p tcp --dport 5353 -j ACCEPT
#   iptables -A OUTPUT -p udp --dport 5353 -j ACCEPT
#   iptables -A OUTPUT -p tcp --dport 22 -j ACCEPT
   iptables -A OUTPUT -p tcp --dport 9996 -j ACCEPT
   iptables -A OUTPUT -p tcp --dport 9995 -j ACCEPT
   iptables -A OUTPUT -p tcp --sport 9996 -j ACCEPT
   iptables -A OUTPUT -p tcp --sport 9995 -j ACCEPT
   iptables -A OUTPUT -d 192.168.43.1 -p tcp --dport 8022 -j ACCEPT
   iptables -A OUTPUT -d 192.168.43.1 -p tcp --dport 2222 -j ACCEPT
   iptables -A OUTPUT -p tcp -d 127.0.0.1 --sport 631 -j ACCEPT
   iptables -A OUTPUT -p udp -d 127.0.0.1 --sport 631 -j ACCEPT   
#   iptables -A OUTPUT -p tcp -d 192.168.43.66 --sport 631 -j ACCEPT

#   iptables -A OUTPUT -p tcp --dport 5555 -j ACCEPT
#   iptables -A OUTPUT -p tcp --dport 8888 -j ACCEPT
#   iptables -A OUTPUT -p tcp --dport 5900 -j ACCEPT
#   iptables -A OUTPUT -p tcp --dport 5901 -j ACCEPT
#   iptables -A OUTPUT -p tcp --dport 3389 -j ACCEPT
#   iptables -A OUTPUT -p udp --dport 3389 -j ACCEPT
#iptables -A OUTPUT -i wlp2s0 -m mac  -j ACCEPT
iptables -A OUTPUT -d 127.0.0.1 -p tcp --sport 9229 -j DROP
iptables -A OUTPUT -d 127.0.0.1 -p tcp --dport 9229 -j DROP
iptables -A OUTPUT -p tcp --dport 8008 -j DROP
iptables -A OUTPUT -p tcp --sport 8008 -j DROP
iptables -A OUTPUT -p tcp --dport 8009 -j DROP
iptables -A OUTPUT -p tcp --sport 8009 -j DROP
iptables -A OUTPUT -d 127.0.0.1 -j ACCEPT
   iptables -A OUTPUT -d 192.168.43.118 -j DROP
   iptables -A OUTPUT -d 192.168.43.143 -j DROP
   iptables -A OUTPUT -d 224.0.0.251 -j DROP #ACCEPT
   iptables -A OUTPUT -d 239.255.255.250  -j ACCEPT
   iptables -A OUTPUT -j DROP
   iptables -L
