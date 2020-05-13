killall autossh 2> /dev/null
killall autossh 2> /dev/null
killall autossh 2> /dev/null
killall autossh 2> /dev/null
./iptables.sh
/etc/init.d/avahi-daemon stop
/home/mark/Downloads/platform-tools/adb kill-server 2> /dev/null
/home/mark/Downloads/platform-tools/adb start-server
/etc/init.d/cups stop
/etc/init.d/apache2 stop
/etc/init.d/ssh stop
systemctl stop systemd-resolved 
./dnsfix.sh 
#ssh -C -R 127.0.0.1:5037:127.0.0.1:5037 -L 127.0.0.1:3389:127.0.0.1:3389 -D 1888 mark@40.121.213.9
#ssh -C -R 127.0.0.1:2222:127.0.0.1:22 -L 127.0.0.1:3389:127.0.0.1:3389 -D 127.0.0.1:8888 mark@192.168.43.1 -p 2222
#ssh -C -R 127.0.0.1:5037:127.0.0.1:5037 -R 127.0.0.1:8700::8700 -R 127.0.0.1:8600:192.168.43.1:8600 -L 127.0.0.1:3389:127.0.0.1:3389 -D 127.0.0.1:8888 mark@13.88.12.119 -R 127.0.0.1:5556:192.168.43.1:5556 -R 127.0.0.1:5555:192.168.43.1:5555 -p 2222
#export AUTOSSH_FIRST_POLL=15
export AUTOSSH_GATETIME=15
#export AUTOSSH_MAXLIFETIME=999999
#export AUTOSSH_POLL=10
autossh -M 9995 -o "ServerAliveInterval 30" -o "ServerAliveCountMax 5" -R 127.0..0.1:8600:127.0.0.1:8600 -R 127.0.0.1:8700:127.0.0.1:8600 -R 127.0.0.1:15432:127.0.0.1:15432 -w 3:3 -C -R 127.0.0.1:5037:127.0.0.1:5037 -L 127.0.0.1:5900:127.0.0.1:5900 -L 127.0.0.1:5800:127.0.0.1:5800 -L 127.0.0.1:3389:127.0.0.1:3389 -D 127.0.0.1:8888 mark@192.168.43.1 -p 2222 -N
