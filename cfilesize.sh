#!/bin/sh
#A script to check the file sizes of all c and h files
# Ver 1.01 By Santakd

# disk usage
$ du -s *.[ch] | sort -k 1 -n | (while read x nam ; do z=$[ $z + $x ] ; done; echo "Total size of all C files in kB: $z")
