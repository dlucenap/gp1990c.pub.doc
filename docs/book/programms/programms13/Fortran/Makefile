PACKAGE      = helloProgrammer.mod
VERSION      = ` date +"%m-%d-%Y@%T" `
RELEASE_DIR  = ..
RELEASE_FILE = $(PACKAGE)"\#"$(VERSION)
COMPILER = gfortran
.PHONY : clean install
    all:
	@echo "Try 'make help'"
    build:
	$(COMPILER) helloProgrammer.f95 -o helloProgrammer
    clean: 
	rm helloProgrammer
    help: 
	egrep "^# target:" [Mm]akefile
    list: 
	ls
    dist: 




    