#!/bin/sh

LINES=$(cat $1)
for LINE in $LINES
do
	echo $LINE | flookup german.bin
done
