PACKAGE      = helloProgrammer.mod
VERSION      = ` date +"%m-%d-%Y@%T" `
RELEASE_DIR  = ..
RELEASE_FILE = $(PACKAGE)"\#"$(VERSION)
COMPILER = gm2
.PHONY : clean install
    all:
	@echo "Try 'make help'"
    build:
	$(COMPILER) helloProgrammer.mod -o helloProgrammer
    clean: 
	rm helloProgrammer
    help: 
	egrep "^# target:" [Mm]akefile
    list: 
	ls
    dist: 




    