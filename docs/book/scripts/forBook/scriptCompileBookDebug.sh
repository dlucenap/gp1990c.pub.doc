#!/bin/bash


#chapter="" 

#strOutput="logs/latexCompilerBook.log"
strOutput="/dev/sty"

echo "Cleaning..."

rm $1.dvi
rm $1.ps
rm $1.pdf
rm bu*
rm *.aux
rm *~

echo "Compiling..."

latex $1
latex $1
bibtex $1

./scriptBibunitcs.sh

makeindex -s $1.ist $1

latex $1
latex $1

echo "dvi2ps"

dvips -q* -o $1.ps $1.dvi

echo "ps2pdf"

ps2pdf $1.ps

echo "Good ;-)"

sh scriptInformationBook.sh $1

sh scriptCreateFoldertoUploadBook.sh $1