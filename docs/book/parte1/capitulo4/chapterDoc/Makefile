VERSION      = ` date +"%m-%d-%Y@%T" `
RELEASE_DIR  = ..
RELEASE_FILE = $(PACKAGE)"\#"$(VERSION)
DOC = chapter4
.PHONY : all
    all: clean links doc
    doc: 
	echo "Compiling Chapter with LaTeX2e"
	latex $(DOC)
	latex $(DOC)
	#bibtex $(DOC)
	makeindex -s chapter.ist $(DOC)
	latex $(DOC)
	latex $(DOC)
	echo "dvi2ps"
	dvips -o $(DOC).ps $(DOC).dvi
	echo "ps2pdf"
	ps2pdf $(DOC).ps
	echo "pdf2djvu"
	pdf2djvu -o $(DOC).djvu $(DOC).pdf
    index:
	makeindex $1
	xindy -C modern-utf8 -I latex -L spanish $1.idx
    links:
	sh generateSymbolicLinks.sh	
    readme:
	echo "Options -> README.md"
	make usage --no-print-directory > README.md
    clean: 
	echo "Clean folder..."
	rm $(DOC).dvi
	rm $(DOC).ps
	rm $(DOC).pdf
	rm $(DOC).djvu
	rm $(DOC).lot
	rm $(DOC).out
	rm $(DOC).toc
	rm $(DOC).bbl
	rm $(DOC).blg
	rm $(DOC).idx
	rm $(DOC).lof
	rm $(DOC).ent
	rm *.log
	rm *.aux
	rm *~
    ftp: 
	rm -Rv upload/$(DOC)/
	mkdir upload/$(DOC)/
	cp $(DOC).dvi upload/$(DOC)/
	cp $(DOC).ps upload/$(DOC)/
	cp $(DOC).pdf upload/$(DOC)/
	cp $(DOC).djvu upload/$(DOC)/
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


    
