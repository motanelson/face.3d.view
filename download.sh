#!/usr/bin/sh 
printf "\033c\033[43;30m\ndownloa gcc"
wget "http://www.netgull.com/gcc/releases/gcc-4.0.0/gcc-4.0.0.tar.gz" 
gzip -d 'gcc-4.0.0.tar.gz'
tar --extract -f 'gcc-4.0.0.tar'
cd gcc-4.0.0
