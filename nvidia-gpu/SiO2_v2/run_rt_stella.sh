#!/bin/sh

ln -s  ./data_for_restart  ./restart

export OMP_NUM_THREADS=8
mpiexec -n 4  ../../salmon2/SALMON_v.2.0.1/build/salmon < rt.inp > rt.out


