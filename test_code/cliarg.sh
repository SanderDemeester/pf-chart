#!/bin/bash

divid=0
contentheader=yes
filename=NULL
parseprofile=profile1
SHORTOPTS="nd:f:p:"
LONGOPTS="no-content-header,div-id,file:,parse-profile:"
ARGS=$(getopt -s bash --options $SHORTOPTS --longoptions $LONGOPTS -- "$@")
eval set -- $ARGS
while true ; do
    case $1 in
	-n|--no-content-header) contentheader=no; shift;;
	-d|--div-id) shift; divid="$1"; shift;;
	-f|--file) shift; filename="$1"; shift;;
	-p|--parse-profile)shift; parseprofile="$1"; shift;;
	--) shift; break;;
	*) shift; break;;
    esac
done
echo $contentheader
echo $divid
echo $filename
echo $parseprofile