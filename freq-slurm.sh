#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#<<<<<<< HEAD
#<<<<<<< HEAD
#=======
#SBATCH --cpus-per-task=1	# number of processors per task
#>>>>>>> c0907a02c9518110ea62a36bb294529967ffebd5
#=======
#SBATCH --cpus-per-task=1	# number of processors per task
#>>>>>>> upstream/main
#SBATCH -J "freq"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o freq-slurm.%N.%j.out # STDOUT
#SBATCH -e freq-slurm.%N.%j.err # STDERR

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
python -u -c "import PyHipp as pyh; \
pyh.FreqSpectrum(saveLevel=1); \
pyh.FreqSpectrum(loadHighPass=True, pointsPerWindow=3000, saveLevel=1);
#import time; \
#pyh.RPLLFP(saveLevel=1); \
#print(time.localtime());"
#<<<<<<< HEAD

#=======
#>>>>>>> upstream/main
