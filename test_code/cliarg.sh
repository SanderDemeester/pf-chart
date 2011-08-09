#!/bin/bash

divid=0
contentheader=yes
tmp=`getopt -o nd: --long no-content-header,div-id: -- $@`
eval set -- $tmp
while true ; do
    case $1 in
	-n|--no-content-header) contentheader=no; shift;;
	-d|--div-id) divid="$2"; shift;;
	--) shift; break;;
	*) break;;
    esac
done
echo $contentheader
echo $divid