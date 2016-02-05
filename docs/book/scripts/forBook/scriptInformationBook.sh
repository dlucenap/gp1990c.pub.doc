#!/bin/bash


#chapter="" 

strOutput="logs/latexCompilerBook.log"

echo "***********************************************"
echo "Size of: $.*"


sizeDVIFile=`stat -c %s $1.dvi`

echo "$.* is $1.dvi -> $sizeDVIFile Bytes"

sizePSFile=`stat -c %s $1.ps`

echo "$.* is $1.ps -> $sizePSFile Bytes"

sizePDFFile=`stat -c %s $1.pdf`

echo "$.* is $1.pdf -> $sizePDFFile Bytes"

echo "***********************************************"

