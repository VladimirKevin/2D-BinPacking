CXX	:= g++-4.1
CXXFLAGS := -g 
OBJECTS := binPacking2D.o FiniteBestStrip.o utils.o HFirstBest.o 

all: binPacking2D

binPacking2D: $(OBJECTS)
	$(CXX) $(CXXFLAGS) $(OBJECTS) -o binPacking2D
	rm -rf *.o *.out semantic.cache *.gch *~ *.tex.backup

binPacking2D.o: binPacking2D.cpp
	$(CXX) $(CXXFLAGS) -c binPacking2D.cpp

HFirstBest: HFirstBest.cpp 
	$(CXX) $(CXXFLAGS) -c HFirstBest.cpp 

FiniteBestStrip.o: FiniteBestStrip.cpp
	$(CXX) $(CXXFLAGS) -c FiniteBestStrip.cpp

utils.o: utils.cpp
	$(CXX) $(CXXFLAGS) -c utils.cpp

clean:
	rm -rf binPacking2D *.o *.out semantic.cache *.gch *~ *.tex.backup
