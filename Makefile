# Variables
CC = gcc
CFLAGS= -g -Wall -std=gnu99
TARGET = ex2
INCLUDES = inc

# Build the parent process and child exec program
all: $(TARGET) $(CHILD_EXEC)

# Rule to compile the main program (ex2)
$(TARGET): src/ex2.c src/errExit.c
	$(CC) -I $(INCLUDES) $(CFLAGS) -o $(TARGET) src/ex2.c

# Clean up the generated files
clean:
	rm -f $(TARGET) src/*.o

# Phony targets
.PHONY: all clean run

