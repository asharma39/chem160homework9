#!/bin/bash
if [ $# -ne 2]; then
	echo "This script requires a protein file"
	exit 1
fi
if [ ! -f $2 ]; then
	echo "Cannot find protein file"
	exit 1
fi
For i in ALA ARG ASP CYS GLU GLN GLY HIS ILE LEU LYS MET PHE PRO SER THR TRP TYR VAL; do
	echo -n $i
	grep $i$1 |grep CA | wc | colrm 11
done
