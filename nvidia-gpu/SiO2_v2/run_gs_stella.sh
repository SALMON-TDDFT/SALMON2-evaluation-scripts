#!/bin/sh

export OMP_NUM_THREADS=8
mpiexec -n 4  ../../salmon2/SALMON_v.2.0.1/build/salmon < gs.inp > gs.out


