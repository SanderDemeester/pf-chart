#!/bin/bash

divid=0
contentheader=yes
filename=NULL
SHORTOPTS="nd:f:"
LONGOPTS="no-content-header,div-id,file:"
ARGS=$(getopt -s bash --options $SHORTOPTS --longoptions $LONGOPTS -- "$@")
eval set -- $ARGS
while true ; do
    case $1 in
	-n|--no-content-header) contentheader=no; shift;;
	-d|--div-id) shift; divid="$1"; shift;;
	-f|--file) shift; filename="$1"; shift;;
	--) shift; break;;
	*) shift; break;;
    esac
done
echo $contentheader
echo $divid
echo $filename