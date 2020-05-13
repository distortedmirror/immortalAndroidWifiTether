#ssh -L 192.168.43.1:2222:localhost:22 kali@52.183.68.134 
#autossh -M 5555 -L 192.168.43.1:2222:localhost:22 mark@40.121.213.9
#ssh -L 192.168.43.1:2222:localhost:22 mark@13.88.12.119   
export AUTOSSH_FIRST_POLL=15
export AUTOSSH_GATETIME=15
export AUTOSSH_MAXLIFETIME=999999
export AUTOSSH_POLL=10
killall autossh
autossh -M 9995 -o "ServerAliveInterval 30" -o "ServerAliveCountMax 3" -D 127.0.0.1:8888 -L 192.168.43.1:2222:127.0.0.1:22  mark@40.121.213.9
