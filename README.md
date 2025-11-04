# Conway's Game of Life

This project implements Conway's Game of Life, a classic cellular automaton simulation, in C.

## Overview

Conway's Game of Life is a zero-player game that evolves based on its initial state. The simulation follows simple rules:
- Any live cell with 2 or 3 live neighbors survives
- Any dead cell with exactly 3 live neighbors becomes alive
- All other cells die or remain dead

## Project Structure

- `main.c` - Main program that runs the simulation with different patterns
- `life.c` - Implementation of the game logic (evolve function)
- `Makefile` - Build automation for compiling and managing the project

## Build Instructions

### Prerequisites
- GCC compiler
- Make utility

### Building the Project

To build the executable:
```bash
make
```

This will create an executable named `conway`.

### Running the Simulation

Run with blinker pattern (default):
```bash
./conway
```
or
```bash
./conway b
```

Run with glider pattern:
```bash
./conway g
```

### Cleaning Up

To remove compiled files:
```bash
make clean
```

### Installation

To install the executable and header file system-wide:
```bash
make install
```

This will copy the executable to `/usr/local/bin/` and the header file to `/usr/local/include/`.

## Features

- **Blinker Pattern**: A simple oscillating pattern (3x3 grid, 3 generations)
- **Glider Pattern**: A moving pattern that travels across the field (45x45 grid, 175 generations)

## Development

This project is part of a DevOps course assignment focusing on build automation and version control.
