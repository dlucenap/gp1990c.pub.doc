#!/bin/bash


#chapter="" 

strOutput="logs/latexCompilerBook.log"

echo "Cleaning..."

rm $1.dvi >> $strOutput
rm $1.ps >> $strOutput
rm $1.pdf >> $strOutput
rm bu* >> $strOutput
rm *.aux >> $strOutput
rm *~ >> $strOutput

echo "Compiling..."

latex $1 > $strOutput
latex $1 >> $strOutput

bibtex $1 >> $strOutput

./scriptBibunitcs.sh >> $strOutput

makeindex -s $1.ist $1 -t "logs/makeindexCompilerBook.log"

latex $1 >> $strOutput
latex $1 >> $strOutput

echo "dvi2ps"

dvips -q* -o $1.ps $1.dvi

echo "ps2pdf"

ps2pdf $1.ps

echo "Good ;-)"

sh scriptInformationBook.sh $1

sh scriptCreateFoldertoUploadBook.sh $1

