VERSION      = ` date +"%m-%d-%Y@%T" `
RELEASE_DIR  = ..
RELEASE_FILE = $(PACKAGE)"\#"$(VERSION)
1 = main
.PHONY : all
    all: clean links doc
    doc: 
	echo "Compiling..."
	latex $1
	latex $1
#	bibtex $1
#	latex $1
#	makeindex -s $1.ist $1
#	xindy -M texindy -M style1 -C utf8 -L spanish-modern $1.idx
	latex $1
	echo "dvi2ps"
	dvips -q* -o $1.ps $1.dvi
	echo "ps2pdf"
	ps2pdf $1.ps
	echo "pdf2djvu"
	pdf2djvu -o $1.djvu $1.pdf
	echo "Good ;-)"
    index:
	makeindex $1
	xindy -C modern-utf8 -I latex -L spanish $1.idx
    links:
	sh graphics/generateSymbolicLinks.sh	
	sh gnuplot/generateSymbolicLinks.sh
	sh algorithms/generateSymbolicLinks.sh
	sh programms/generateSymbolicLinks.sh
	sh grammars/generateSymbolicLinks.sh
	sh tables/generateSymbolicLinks.sh	
	sh code/generateSymbolicLinks.sh
    readme:
	echo "Options -> README.md"
	make usage --no-print-directory > README.md
    ftp: 
	sh scriptInformationBook.sh $1
	sh scriptCreateFoldertoUploadBook.sh $1
	cd parte1/ && make doc
	cd parte1/ && make ftp
	cp -Rv parte1/upload/part1/ ../../web/docs/
    clean: 
	rm $1.aux
	# main docs
	rm main.pdf
	rm main.ps
	rm main.dvi
	rm main.djvu
	# log and other files
	rm $1.log
	rm $1.bbl
	rm $1.blg
	rm $1.ent
	rm $1.idx
	rm $1.ilg
	rm $1.ind
	rm $1.lof
	rm $1.lot
	rm $1.out
	rm $1.toc
    help: 
	egrep "^# target:" [Mm]akefile
    list: 
	ls
    usage:
	@echo "* doc: To compile Book"
	@echo "* clean: To clean aux files"
	@echo "* links: Generate Symbolic Links"
	@echo "* links: Generate README.md"
	@echo "* ftp: Generate FTP ..."




    
