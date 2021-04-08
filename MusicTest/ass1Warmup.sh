#!/bin/bash
#Brent Barrese - 10/10/2020
#Must be ran from inside Music directory

#Warmup 1 - total number of tracks
echo -n "Total Tracks: " 
find . -type f | grep .ogg | wc -l

#Warmup 2 - number of distinct artists/bands
echo -n -e "\nTotal Artists: ";
find . -maxdepth 2 -mindepth 2 -type d | cut -d / -f 3 | sort | uniq | wc -l

#Warmup 3 - artists with albums in multiple genre
echo -e "\nMulti-Genre Artists: ";
find . -maxdepth 2 -mindepth 2 -type d | cut -d / -f 3 | sort | uniq -d

#Warmup 4 - Multi-disk albums
echo -e "\nMulti-Disk Albums: ";
find . -maxdepth 4 -mindepth 4 -type d | cut -d / -f 4 | sort | uniq 
