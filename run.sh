#!/bin/sh
#
#SBATCH --partition cpar  # partition (queue)
#SBATCH --exclusive       # exclusive allocation
#SBATCH --time=01:00      # allocation for 1 minute
module load gcc/11.2.0
make
perf stat -r 1 -e instructions,cycles,L1-dcache-load-misses -M cpi ./fluid_sim

