PACKAGE      = gp1990c
VERSION      = ` date +"%m-%d-%Y@%T" `
RELEASE_DIR  = ..
RELEASE_FILE = $(PACKAGE)"\#"$(VERSION)
.PHONY: all
    all: web	
    web:
	exec ./makeWeb.sh
    help: 
	egrep "^# target:" [Mm]akefile
    list: 
	ls
    dist: 

 
