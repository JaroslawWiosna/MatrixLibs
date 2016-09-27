CXX=g++

CXXFLAGS=

OPTIMIZATION=

CPPSTANDARD=c++14

CPPFLAGS=-Wall -g -flto

INC=.

SRC_PATH=./tests/
CORRECT_TEST=correctTests
PERF_TEST=performanceTests

TARGETS+=$(CORRECT_TEST)
TARGETS+=$(PERF_TEST)

CXXFLAGS+=-std=$(CPPSTANDARD) 
CXXFLAGS+=$(CPPFLAGS)
CXXFLAGS+=$(OPTIMIZATION)

LFLAGS=-lgtest

all:
	 $(CXX) $(CXXFLAGS) -I $(INC) $(SRC_PATH)$(CORRECT_TEST).cpp -o $(CORRECT_TEST) $(LFLAGS)
	 $(CXX) ${CXXFLAGS} -I $(INC) $(SRC_PATH)$(PERF_TEST).cpp -o $(PERF_TEST) $(LFLAGS)
clean:
	rm -rf $(TARGETS)
