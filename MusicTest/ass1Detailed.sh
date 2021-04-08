#!/bin/bash
#Brent Barrese - 10/10/2020
#Must be ran from inside Music directory

#Multi-Genre Artists
echo "Multi-Genre Artists: "
find . -maxdepth 2 -mindepth 2 -type d | cut -d / -f 3 | sort | uniq -d | while read i ; do echo "  $i" ; find . -type d | grep "$i" | cut -d / -f 2 | sort | uniq | while read j ; do echo "    $j" ; done ; done

#Multi-Disk Albums
echo -e "\nMulti-Disk Albums: "
#This line below does not find anything with "disc"
#find . -maxdepth 4 -mindepth 4 -type d | cut -d / -f 3 | sort | uniq | while read i ; do echo "  $i" ; find . -type d | grep "$i.*disk" | cut -d / -f 4 | uniq | while read j ; do echo "    $j" ; done ; done ; 
find . -maxdepth 4 -mindepth 4 -type d | cut -d / -f 3 | sort | uniq | while read i ; do echo "  $i" ; find . -type d | grep -E "$i.*disk|$i.*disc" | cut -d / -f 4 | uniq | while read j ; do echo "    $j" ; done ; done 

#Possible Duplicate Albums
echo -e "\nPossible Duplicate Albums: "
find . -maxdepth 3 -mindepth 3 -type d | cut -d / -f 4 | sort | uniq -d | while read i; do echo "  $i"; ls -Nd */*/"$i" | awk -F/ '{print "    ", $1,"   ",$2}'; done