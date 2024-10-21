CPP = g++ -Wall -pg -mavx -ftree-vectorize -msse4 -funroll-loops -O3 
SRCS = main.cpp fluid_solver.cpp EventManager.cpp

all:
	$(CPP) $(SRCS) -o fluid_sim

clean:
	@echo Cleaning up...
	@rm fluid
	@echo Done.
