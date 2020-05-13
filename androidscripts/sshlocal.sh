killall autossh
sshpass -p 'QAZwsxEDCrfv123!' autossh -M 5555 -o "ServerAliveInterval 30" -o "ServerAliveCountMax 3" -D 127.0.0.1:8888 -L 127.0.0.1:3389:127.0.0.1:3389 -R 127.0.0.1:15432:127.0.0.1:15432 mark@40.121.213.9
