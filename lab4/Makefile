# Compiler and flags
CC = gcc
CFLAGS = -Wall -g

# Target executable
TARGET = conway

# Source and object files
SRC = main.c life.c
OBJ = $(SRC:.c=.o)

# Default target: build conway
$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ)

# Compile object files separately
%.o: %.c %.h
	$(CC) $(CFLAGS) -c $< -o $@

# Phony targets
.PHONY: clean install

# Clean up compiled files
clean:
	rm -f $(TARGET) *.o

# Install executable and header
PREFIX = /usr/local
install: $(TARGET)
	cp $(TARGET) $(PREFIX)/bin/
	cp life.h $(PREFIX)/include/
