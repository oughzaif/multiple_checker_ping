#!/bin/bash
scan_network(){
	echo "hello please insert your ip"
	read ip
	for lastoctet in $( seq 1 10 )
	do
		full_ip="$ip.$lastoctet"
		ping -c 1 $full_ip > /dev/null  2>&1
		if [ $? -eq 0 ];then
			echo " your $full_ip is alive "	
		else
	    	echo " your	$full_ip is sleep"
		fi	
	done		

}
scan_network
