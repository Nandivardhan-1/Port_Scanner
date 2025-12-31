#!/bin/bash
target=$1
if [ $1 -eq help ]; then
        echo "Port Scanner"
        echo "Type 1 for Version Detection"
        echo "Type 2 for Fast Scanning"
        echo "Type 3 for Stealth or if the firewall is blocking your probe"
        echo "Type 4 for Scanning all the ports and detecting the version"
	echo "Example: ./scan1.sh ip-address numbers(e.g,1,2,3,4)"	
fi	
if [ $1!=help ]; then
	echo "hi"
       elif [ $2=1 ]; then
                echo "Initiating Version Scan"
       	        sudo nmap -sV  "$target" -oX nmapresult.xml
		
                elif [ $2=2 ]; then
                        echo "Initiating Fast Scanning"
	                sudo nmap -sV -sC -p- -T5 "$target" -oX nmapresult.xml
                        elif [ $2=3 ]; then
	                        echo "Initiating Stealth Scanning"
                                sudo nmap -sS -D RND:1.2.3.4.5.6.7 -Pn "$target" -oX nmapresult.xml
                                elif [ $2=4 ]; then
	                                echo "Initiating Advanced Scanning"
	                                sudo nmap -p- -sS -sV -sC --min-rate 2000 -n -vvv -Pn "$target" -oX nmapresult.xml
                                        else
						echo "Invalid Choice"
                                                return 0       
fi
