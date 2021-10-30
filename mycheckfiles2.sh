#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "Start Times"
head -n 1 -v rplpl-slurm*.out
echo ""
head -n 1 -v rplspl-slurm*.out
echo "End Times"
tail -n 5 -v rplpl-slurm*.out
echo ""
tail -n 5 -v rplspl-slurm*.out

