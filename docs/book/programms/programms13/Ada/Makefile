PACKAGE      = helloProgrammer.adb
VERSION      = ` date +"%m-%d-%Y@%T" `
RELEASE_DIR  = ..
RELEASE_FILE = $(PACKAGE)"\#"$(VERSION)
COMPILER = gnatmake
.PHONY : clean install
    all:
	@echo "Try 'make help'"
    build:
	$(COMPILER) helloprogrammer.adb
    clean: 
	rm helloprogrammer
	rm *.o
	rm *.ali
    help: 
	egrep "^# target:" [Mm]akefile
    list: 
	ls
    dist: 




    