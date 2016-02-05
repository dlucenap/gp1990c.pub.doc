#!/bin/csh
foreach auxfile (bu*.aux)
echo bibtex ‘$auxfile‘
bibtex $auxfile
end

