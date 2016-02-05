#!/bin/bash

aryPages=(index project docs);

case "$1" in
	"--help")
	    echo 'help'
	    exit 0
	    ;;
	"-v")
	    echo 'Verbose mode'
	    exit 0
	    ;;
	"-clean")
	    rm *.html
	    rm *~
	    echo 'Folder clean'
	    exit 0
	    ;;
	 "*")
	    ;;  
esac
for i in  "${aryPages[@]}"; do 

./makeHTML.sh $i; 

done

rm -Rv docs/*
mkdir docs/book
cp ../docs/book/main.dvi ./docs/book/book.dvi
cp ../docs/book/main.ps ./docs/book/book.ps
cp ../docs/book/main.pdf ./docs/book/book.pdf
cp ../docs/book/main.djvu ./docs/book/book.djvu
cp -Rv ../docs/book/parte1/upload/part1 ./docs/part1