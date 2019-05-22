build: ripser


all: ripser ripser-coeff ripser-debug


ripser: ripser.cpp
	c++ -std=c++11 ripser.cpp -o ripser -Ofast -D NDEBUG

ripser-coeff: ripser.cpp
	c++ -std=c++11 ripser.cpp -o ripser-coeff -Ofast -D NDEBUG -D USE_COEFFICIENTS

ripser-debug: ripser.cpp
	c++ -std=c++11 ripser.cpp -o ripser-debug -g


clean:
	rm -f ripser ripser-coeff ripser-debug
