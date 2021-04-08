# Project Title
Assignment 1 File Management from CSS 390 Scripting Languages

# Description
These are bash scripts that search through a directory to find specific details such as: Total tracks, total artists, multi-genre artists, multi-disk albums, the artists that are multi-genre, the artists and albums that are multi-disk, and possible duplicate albums.

The script ass1Warmup will find the total tracks, total artists, multi-genre artists, and the multi-disk albums.

The script ass1Detailed will list the multi-genre artists, multi-disk albums, and possible duplicate albums found.

# How To Use
To use the scripts you will need to place inside of your Music directory. The directory must be in the format of Music --> genre --> artist --> albums --> disc 1 or 2 (if valid) --> songs

To run, open terminal in Music directory and type enter command "bash ass1Warmup.sh" to run the ass1Warmup script. Do the same for the ass1Detailed script if you would like to run that one.

# Commands Used
* echo
* find
* grep
* wc
* maxdepth / mindepth
* cut
* sort
* uniq
* while loop
* ls
* awk 

# Expected
When searching for albums with multiple discs, it is expected that the discs are labeled in the format of disc1 or disk1 (either spelling is okay).