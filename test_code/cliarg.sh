#!/bin/bash

divid=0
contentheader=yes
file=NULL
tmp=`getopt -o nd:f: --long no-content-header,div-id:,file: -- $@`
eval set -- $tmp
while true ; do
    case $1 in
	-n|--no-content-header) contentheader=no; shift;;
	-d|--div-id) divid="$2"; shift;;
	--) shift; break;;
	*) exit 1;;
    esac
done
echo $contentheader
echo $divid
echo $file