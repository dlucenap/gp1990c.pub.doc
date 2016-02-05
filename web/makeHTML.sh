#!/bin/bash

varDate=$(date +"%m-%d-%Y\@%T")

cp header.txt $1.html
cat $1.txt >> $1.html
cat footer.txt >> $1.html


perl -p -i -e "s/!date!/$varDate/g" $1.html;