# By default I want optimization
DEBUG=no
include ../../../../Makefile.inc
CPPFLAGS+=-I../include


HEADERS = $(wildcard ../include/MatOp/*.h) $(wildcard ../include/LinAlg/*.h) $(wildcard ../include/Util/*.h) $(wildcard ../include/*.h)


.PHONY: all test clean

all: QR.out Eigen.out SymEigs.out SymEigsShift.out GenEigs.out GenEigsRealShift.out GenEigsComplexShift.out \
	SymGEigsCholesky.out SymGEigsRegInv.out

test:
	-./QR.out
	-./Eigen.out
	-./SymEigs.out
	-./SymEigsShift.out
	-./GenEigs.out
	-./GenEigsRealShift.out
	-./GenEigsComplexShift.out
	-./SymGEigsCholesky.out
	-./SymGEigsRegInv.out

%.out: %.cpp $(HEADERS)
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) $< -o $@ $(LDFLAGS) $(LIBS)


clean:
	$(RM) QR Eigen SymEigs SymEigsShift SymGEigsCholesky GenEigs GenEigsRealShift GenEigsComplexShift *.o
