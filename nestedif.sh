set -x
ip=`hostname -i`
uptime=`uptime  | grep -w min |  cut -d ',' -f 1 | cut -d ' ' -f 4`
time=`uptime  | grep -v  min |  cut -d ',' -f 1 | cut -d ' ' -f 4`
if [ "$ip" = "192.168.1.27" ];
then
  echo "ip equal proceeding"

  if [  -z "$time" ] || [ "$uptime" -gt 5 ];
  then
    echo "uptime reached and  empty"
  else
    echo "no execution "
  fi
else
  echo "no exection main loop "
fi

