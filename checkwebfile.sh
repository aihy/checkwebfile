#!/bin/bash                                                                     

display_usage(){
	echo "Usage: bash checkwebfile.sh url message email sleeptime"
	echo "Example: bash checkwebfile.sh wzhy.ink wzhy_changed p_xi@foxmail.com 1"
}

if [  $# -le 3 ] 
then 
	display_usage
	exit 1
fi 
 
if [[ ( $# == "--help") ||  $# == "-h" ]] 
then 
	display_usage
	exit 0
fi

wget $1 -O $2 
first=`md5sum $2 | awk '{print $1}'`

while :
do
	wget $1 -O $2 
	now=`md5sum $2 | awk '{print $1}'`
	if [ $first != $now ]
	then
		echo "xixi" | mail -s "$2" $3
		first=$now
	fi
	sleep $4 
done


