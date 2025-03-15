CC = g++
CFLAGS = -Wall -O2
LDFLAGS = -lssl -lcrypto

all: rsa_verify

rsa_verify: main.o
	$(CC) $(CFLAGS) -o rsa_verify main.o $(LDFLAGS)

main.o: main.cpp
	$(CC) $(CFLAGS) -c main.cpp

clean:
	rm -f *.o rsa_verify