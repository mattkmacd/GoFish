final: main.o deck.o card.o player.o
	g++ -otest  main.o deck.o card.o player.o
main.o: main.cpp card.h deck.h player.h
	g++ -c main.cpp
card.o: card.cpp card.h
	g++ -c card.cpp
deck.o: deck.cpp deck.h card.h
	g++ -c deck.cpp
player.o: player.cpp player.h deck.h
	g++ -c player.cpp