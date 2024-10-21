#!/bin/sh
#
#SBATCH --partition cpar  # partition (queue)
#SBATCH --exclusive       # exclusive allocation
#SBATCH --time=03:00      # allocation for 1 minute
module load gcc/11.2.0
make
perf stat -r 3 -e instructions,cycles,L1-dcache-load-misses -M cpi ./fluid_sim

