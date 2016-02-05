PACKAGE      = chapter1
VERSION      = ` date +"%m-%d-%Y@%T" `
RELEASE_DIR  = ..
RELEASE_FILE = $(PACKAGE)"\#"$(VERSION)
DOC = parte1
.PHONY : all
    all: clean doc
    doc:
	cd capitulo1/chapterDoc/ && make doc
	cd capitulo1/chapterDoc/ && make ftp
	cd capitulo2/chapterDoc/ && make doc
	cd capitulo2/chapterDoc/ && make ftp
	cd capitulo3/chapterDoc/ && make doc
	cd capitulo3/chapterDoc/ && make ftp
	cd capitulo4/chapterDoc/ && make doc
	cd capitulo4/chapterDoc/ && make ftp
	cd capitulo5/chapterDoc/ && make doc
	cd capitulo5/chapterDoc/ && make ftp
    clean: 
	cd capitulo1/chapterDoc/ && make clean
	cd capitulo2/chapterDoc/ && make clean
	cd capitulo3/chapterDoc/ && make clean
	cd capitulo4/chapterDoc/ && make clean
	cd capitulo5/chapterDoc/ && make clean
	rm *.log
	rm *.aux
	rm *~
    ftp: 
	rm -Rv upload/*
	mkdir upload/part1
	cp -Rv capitulo1/chapterDoc/upload/chapter1 upload/part1/
	cp -Rv capitulo2/chapterDoc/upload/chapter2 upload/part1/
	cp -Rv capitulo3/chapterDoc/upload/chapter3 upload/part1/
	cp -Rv capitulo4/chapterDoc/upload/chapter4 upload/part1/
	cp -Rv capitulo5/chapterDoc/upload/chapter5 upload/part1/
    help: 
	echo "Use: make [doc] [clean]"
    list: 
	ls
    dist: 




    