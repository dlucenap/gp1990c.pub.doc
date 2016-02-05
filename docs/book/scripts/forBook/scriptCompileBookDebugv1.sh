#!/bin/bash


#chapter="" 

#strOutput="logs/latexCompilerBook.log"

if [ "$1" = "" ]; then
  echo "Usage: makeDoc.sh [name of main.tex]"
else

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
	    ./makeClean.sh
	    echo 'Folder clean'
	    exit 0
	    ;;
	 "*")
	    ;;  
esac


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

  echo "djvudigital"

  djvudigital $1.ps $1.djvu
  
  echo "Good ;-)"

  sh scriptInformationBook.sh $1

  sh scriptCreateFoldertoUploadBook.sh $1

fi