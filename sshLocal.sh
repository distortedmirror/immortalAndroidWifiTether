ssh-keygen -f "/home/mark/.ssh/known_hosts" -R "[192.168.43.1]:8022"
echo 1. Cricket Wifi
echo 2. AT\&T Wifi
echo 3. Cricket ADB Local
echo -n "Selection: "
read selection 
if [ "$selection" = "2" ]; then
  ssh u0_a192@192.168.43.1 -p 8022
elif [ "$selection" = "1" ]; then
  ssh u0_a177@192.168.43.1 -p 8022
elif [ "$selection" = "3" ]; then
  echo ADB Devices
  adb devices
  echo ADB Forward Port 8022 8022
  adb forward --remove-all
  adb forward tcp:8022 tcp:8022
  #ssh u0_a192@127.0.0.1 -p 8022 'echo "QAZwsx123!"|./sshwifi.sh' -N &
  #echo Logging in...
  #sleep 8
  ssh u0_a192@127.0.0.1 -p 8022
  adb forward tcp:2222 tcp:2222
fi
