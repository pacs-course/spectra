############################################################
#
# An example of Makefile for the course on 
# Advanced Programming for Scientific Computing
# It should be modified for adapting it to the various examples
#
############################################################
#
# The environmental variable PACS_ROOT should be set to the
# root directory where the examples reside. In practice, the directory
# where this file is found. The resolution of PACS_ROOT is made in the
# Makefile.h file, where other important variables are also set.
# The only user defined variable that must be set in this file is
# the one indicating where Makefile.h resides

MAKEFILEH_DIR=../../..
#
include $(MAKEFILEH_DIR)/Makefile.inc
#
# You may have an include file also in the current directory
# This is optional. If not present is not an error
-include Makefile.inc

#
# The general setting is as follows:
# mains are identified bt main_XX.cpp
# all other files are XX.cpp
#

#========================== NEW THE DEFINITION OF THE TARGETS
.phony= all clean distclean doc

LIB_HEADERS=./include/Spectra
LIB_FILE=$(notdir $(LIB_HEADERS))
LIB_MatOp=./include/MatOp/#
LIB_LinAlg=./include/LinAlg/#
LIB_Util=./include/Util/#

.DEFAULT_GOAL = all

all:
	@echo "*To make test go in directory test and do make DEBUG=no"
	@echo "*To run the benchmark go to directory benchmark"
	@echo "*make install installs the library in $(PACS_INC_DIR)"
	@echo "*make doc: makes documentation in ./doc"
	@echo "*make clean: cleans documentation"
	@echo $(LIB_FILE)

install:
	cp -a $(LIB_HEADERS) $(PACS_INC_DIR)/Spectra
doc:
	(cd ./doxygen;  doxygen Doxyfile)

clean:
	$(RM) -r doc/
uninstall:
	$(RM) -r $(PACS_INC_DIR)/Spectra





