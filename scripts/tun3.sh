ifconfig tun3 192.168.45.8 netmask 255.255.255.0
route del -net 192.168.43.0/24 dev tun3
route add 192.168.43.88 dev tun3
# /etc/init.d/cups stop
 /etc/init.d/apache2 stop
systemctl stop systemd-resolved 
./dnsfix.sh 
