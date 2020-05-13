   iptables --flush
   iptables -A INPUT -p tcp --dport 67 -j ACCEPT
   iptables -A INPUT -p udp --dport 67 -j ACCEPT
   iptables -A INPUT -p tcp --sport 22 -j ACCEPT
   iptables -A INPUT -p tcp --dport 53 -j ACCEPT
   iptables -A INPUT -p tcp --dport 5353 -j ACCEPT
   iptables -A INPUT -p udp --dport 53 -j ACCEPT
   iptables -A INPUT -p udp --dport 5353 -j ACCEPT
   iptables -A INPUT -p tcp --sport 2222 -j ACCEPT 
   iptables -A INPUT -p tcp --sport 22222 -j ACCEPT 
iptables -A INPUT -p tcp --sport 8888 -j ACCEPT
   iptables -A INPUT -p tcp  --sport 5900 -j ACCEPT
   iptables -A INPUT -p tcp  --sport 5901 -j ACCEPT
   iptables -A INPUT -p tcp --dport 80 -j ACCEPT
   iptables -A INPUT -p tcp --dport 443 -j ACCEPT
   iptables -A INPUT -p tcp --sport 80 -j ACCEPT
   iptables -A INPUT -p tcp --sport 443 -j ACCEPT
   iptables -A INPUT -p tcp  --sport 5900 -j ACCEPT
   iptables -A INPUT -p tcp --sport 5901 -j ACCEPT
iptables -A INPUT -s 127.0.0.1 -j ACCEPT
#iptables -A INPUT -i wlp2s0 -m mac --mac-source e4:e1:30:08:a3:a0 -j ACCEPT
#iptables -A INPUT -i wlp2s0 -m mac --mac-source 3c:f0:11:49:26:2c -j ACCEPT
#iptables -A INPUT -i wlp2s0 -m mac --mac-source 04:d3:95:46:cc:f5 -j ACCEPT
   iptables -A INPUT -j DROP
   iptables -A OUTPUT -p tcp --sport 67 -j ACCEPT
   iptables -A OUTPUT -p udp --sport 67 -j ACCEPT
   iptables -A OUTPUT -p tcp --dport 22 -j ACCEPT
   iptables -A OUTPUT -p tcp --dport 53 -j ACCEPT
   iptables -A OUTPUT -p udp --dport 53 -j ACCEPT
   iptables -A OUTPUT -p tcp --dport 5353 -j ACCEPT
   iptables -A OUTPUT -p udp --dport 5353 -j ACCEPT
   iptables -A OUTPUT -p tcp --dport 2222 -j ACCEPT
   iptables -A OUTPUT -p tcp --dport 22222 -j ACCEPT
  iptables -A OUTPUT -p tcp --dport 8888 -j ACCEPT
   iptables -A OUTPUT -p tcp --dport 80 -j ACCEPT
   iptables -A OUTPUT -p tcp --dport 443 -j ACCEPT
   iptables -A OUTPUT -p tcp --dport 5900 -j ACCEPT
   iptables -A OUTPUT -p tcp --dport 5901 -j ACCEPT
iptables -A OUTPUT -d 127.0.0.1 -j ACCEPT
   iptables -A OUTPUT -j DROP
   iptables -L
systemctl stop systemd-resolved
cp /etc/resolv.conf.google /etc/resolv.conf
