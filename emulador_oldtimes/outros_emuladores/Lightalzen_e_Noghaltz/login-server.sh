#/bin/sh

ulimit -Sc unlimited

while [ 2 ] ; do
if [ -f .stopserver2 ] ; then
echo server marked down >> servlog.txt
else
echo restarting server at time at `date +"%m-%d-%H:%M-%S"` >> log/startlog.txt
./login-server
fi

sleep 5

done
