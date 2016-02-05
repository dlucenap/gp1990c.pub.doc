PACKAGE      = gp1990c
VERSION      = ` date +"%m-%d-%Y@%T" `
RELEASE_DIR  = ..
RELEASE_FILE = $(PACKAGE)"\#"$(VERSION)
.PHONY: all
    all: code book web tree	
    code:
	cd ./code/gp1990la/gp1990la && $(MAKE)
    book: 
	cd ./docs/book && $(MAKE)
    web: 
	cd ./docs/book/ && $(MAKE) ftp
	cd ./web && $(MAKE) web
    tree:
	tree -n -F -L 2 -T "gp1990c's Book" -o README.md 
    help: 
	egrep "^# target:" [Mm]akefile
    list: 
	ls
    dist: 

 
