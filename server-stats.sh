#!/bin/sh

function cpu_usage()
{
	echo "===CPU USAGE==="
	cat /proc/stat |grep cpu |tail -1|awk '{print ($5*100)/($2+$3+$4+$5+$6+$7+$8+$9+$10)}'|awk '{print "CPU Usage: " 100-$1}'
}

function memory_usage()
{
	echo "===MEMORY USAGE==="
	free | grep Mem | awk '{print $3/$2 * 100.0}'
}

