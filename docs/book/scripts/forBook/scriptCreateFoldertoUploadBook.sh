#!/bin/bash

#chapter="" 

ftpFolder=./final/ftp

rm -Rv ./final

mkdir ./final
mkdir ./final/ftp
mkdir $ftpFolder/book

mkdir $ftpFolder/book/dvi
cp $1.dvi $ftpFolder/book/dvi/

mkdir $ftpFolder/book/ps
cp $1.ps $ftpFolder/book/ps/

mkdir $ftpFolder/book/pdf
cp $1.pdf $ftpFolder/book/pdf/

mkdir $ftpFolder/book/djvu

cd $ftpFolder/
rm ./../web/docs

cp $ftpFolder ../../web/docs

#mkdir ./../web/docs
#cp -Rv * ./../web/docs/