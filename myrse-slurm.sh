#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --cpus-per-task=1	# number of processors per task
#SBATCH -J "rse"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o rse-slurm.%N.%j.out # STDOUT
#SBATCH -e rse-slurm.%N.%j.err # STDERR

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
python -u -c "import PyHipp as pyh; \
import time; \
import os; \
t0 = time.time(); \
print(time.localtime()); \
os.chdir('sessioneye'); \
pyh.RPLSplit(SkipLFP=False, SkipHighPass=False); \
print(time.localtime()); \
print(time.time()-t0);"

<<<<<<< HEAD
=======

aws sns publish --topic-arn arn:aws:sns:ap-southeast-1:705339871746:awsnotify --message "RPE JobDone"
>>>>>>> c0907a02c9518110ea62a36bb294529967ffebd5
