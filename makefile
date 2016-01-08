hand : bin/hand 
	echo "./bin/hand to start program"
bin/hand :  bin bin/main_hand.o bin/hand.o  
	g++ -o bin/hand bin/main_hand.o bin/hand.o
hand_info :
bin/main_hand.o : bin/hand.o main_hand.cpp
	g++ -c -o bin/main_hand.o main_hand.cpp 
bin/hand.o : hand.cpp hand.h
	g++ -c -o bin/hand.o hand.cpp
bin :
	mkdir bin
