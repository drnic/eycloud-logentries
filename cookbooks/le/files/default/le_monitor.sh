# Author: Greg Blasko

export PATH=/usr/local/bin:/usr/bin:/bin:/opt/bin:/usr/x86_64-pc-linux-gnu/gcc-bin/4.1.2

usage() {
	echo "Usage: $0 {start, stop}"
	exit 1
}

if [ $# -lt 1 ]; then 
	usage; 
fi

LOGBASE=/var/log/engineyard
PIDFILE=/var/run/logentries.pid
OUTPUT=$LOGBASE/le_monitor.log

case "$1" in
	start)
	echo "Starting le monitordaemon"
	sudo le monitordaemon & >> $OUTPUT 2>&1;;
	stop)
	echo "Stopping le monitordaemon"
	PID=cat $PIDFILE
	if [ -f $PIDFILE ]; then
		sudo kill -9 $PID
		printf "%s\n" "Ok"
		rm -f $PIDFILE
	else
		printf "%s\n" "pidfile not found"
	fi
	;;
	*)
	usage
	;;
esac
