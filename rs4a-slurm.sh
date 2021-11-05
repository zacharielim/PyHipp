#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#<<<<<<< HEAD
#<<<<<<< HEAD
#SBATCH --cpus-per-task=5      # number of processors per task
#=======
#SBATCH --cpus-per-task=5	# number of processors per task
#>>>>>>> c0907a02c9518110ea62a36bb294529967ffebd5
#SBATCH -J "rs4a"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o rs4a-slurm.%N.%j.out # STDOUT
#SBATCH -e rs4a-slurm.%N.%j.err # STDERR
#=======
#SBATCH --cpus-per-task=5	# number of processors per task
#SBATCH -J "rs4b"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o rs4b-slurm.%N.%j.out # STDOUT
#SBATCH -e rs4b-slurm.%N.%j.err # STDERR
#>>>>>>> upstream/main

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
python -u -c "import PyHipp as pyh; \
import DataProcessingTools as DPT; \
#<<<<<<< HEAD
import time; \
import os; \
t0 = time.time(); \
print(time.localtime()); \
DPT.objects.processDirs(dirs=None, objtype=pyh.RPLSplit, channel=[*range(97,125)], SkipHPC=False, HPCScriptsDir = '/data/src/PyHipp/', SkipLFP=False, SkipHighPass=False, SkipSort=False); \
print(time.localtime()); \
print(time.time()-t0);"

#<<<<<<< HEAD
aws sns publish --topic-arn arn:aws:sns:ap-southeast-1:705339871746:awsnotify --message "rs4a Job Done"
#=======

aws sns publish --topic-arn arn:aws:sns:ap-southeast-1:705339871746:awsnotify --message "RPLS4JobDone"
#>>>>>>> c0907a02c9518110ea62a36bb294529967ffebd5
=======
import os; \
import time; \
t0 = time.time(); \
print(time.localtime()); \
DPT.objects.processDirs(dirs=None, objtype=pyh.RPLSplit, channel=[*range(97,125)], SkipHPC=False, HPCScriptsDir='/data/src/PyHipp/', SkipLFP=False, SkipHighPass=False, SkipSort=False); \
print(time.localtime()); \
print(time.time()-t0);"

aws sns publish --topic-arn arn:aws:sns:ap-southeast-1:018084650241:awsnotify --message "RPLS4JobDone"
>>>>>>> upstream/main
