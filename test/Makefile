# By default I want optimization
DEBUG=no
include ../../../../Makefile.inc
CPPFLAGS+=-I../include
CXXFLAGS+=-Wno-maybe-uninitialized -Wno-use-after-free
#CXXFLAGS = -std=c++14 -Wall -O2 -Wno-parentheses -Wno-misleading-indentation -Wno-int-in-bool-context
#CPPFLAGS += -I../include
LDFLAGS =
LIBS =

HEADERS = $(wildcard ../include/Spectra/MatOp/*.h) \
	$(wildcard ../include/Spectra/MatOp/internal/*.h) \
	$(wildcard ../include/Spectra/LinAlg/*.h) \
	$(wildcard ../include/Spectra/Util/*.h) \
	$(wildcard ../include/Spectra/*.h) \
	$(wildcard ../include/Spectra/contrib/*.h)

OUTPUT = QR.out Eigen.out Schur.out BKLDLT.out \
	Orthogonalization.out RitzPairs.out SearchSpace.out \
	DenseGenMatProd.out DenseSymMatProd.out SparseGenMatProd.out SparseSymMatProd.out \
	SymEigs.out SymEigsShift.out \
	GenEigs.out GenEigsRealShift.out GenEigsComplexShift.out \
	SymGEigsCholesky.out SymGEigsRegInv.out SymGEigsShift.out \
	SVD.out \
	JDSymEigsBase.out JDSymEigsDPRConstructor.out DavidsonSymEigs.out \
	Example1.out Example2.out

.PHONY: all test clean

all: $(OUTPUT)

test:
	-./QR.out
	-./Eigen.out
	-./Schur.out
	-./BKLDLT.out
	-./Orthogonalization.out
	-./RitzPairs.out
	-./SearchSpace.out
	-./DenseGenMatProd.out
	-./DenseSymMatProd.out
	-./SparseGenMatProd.out
	-./SparseSymMatProd.out
	-./SymEigs.out
	-./SymEigsShift.out
	-./GenEigs.out
	-./GenEigsRealShift.out
	-./GenEigsComplexShift.out
	-./SymGEigsCholesky.out
	-./SymGEigsRegInv.out
	-./SymGEigsShift.out
	-./SVD.out
	-./JDSymEigsBase.out
	-./JDSymEigsDPRConstructor.out
	-./DavidsonSymEigs.out
	-./Example1.out
	-./Example2.out

tests-main.o: tests-main.cpp catch.hpp
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) $< -c -o $@

%.out: %.cpp $(HEADERS) tests-main.o
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) $< tests-main.o -o $@ $(LDFLAGS) $(LIBS)

clean:
	$(RM) QR Eigen SymEigs SymEigsShift SymGEigsCholesky GenEigs GenEigsRealShift GenEigsComplexShift *.o
	$(RM) *.out
	$(RM) *.out
	$(RM) *.o
