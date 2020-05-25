systemctl stop systemd-resolved
cp /etc/resolv.conf.google /etc/resolv.conf
#ssh -C -w3:3 -o Tunnel=ethernet -L 3389:40.121.213.9:3389 -D 8888 root@192.168.43.1 -p 2222
ssh -C -w3:3 -o Tunnel=ethernet -L 127.0.0.1:122:40.121.213.9:122 -D 127.0.0.1:8888 mark@192.168.43.1 -p 2222
