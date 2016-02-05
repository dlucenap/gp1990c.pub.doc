PACKAGE      = helloProgrammer.mod
VERSION      = ` date +"%m-%d-%Y@%T" `
RELEASE_DIR  = ..
RELEASE_FILE = $(PACKAGE)"\#"$(VERSION)
COMPILER = fpc
.PHONY : clean install
    all:
	@echo "Try 'make help'"
    build:
	$(COMPILER) helloProgrammer.pas
    clean: 
	rm helloProgrammer.o
	rm helloProgrammer
    help: 
	egrep "^# target:" [Mm]akefile
    list: 
	ls
    dist: 




    