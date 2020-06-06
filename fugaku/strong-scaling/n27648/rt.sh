#!/bin/bash
#PJM -N         "SiO2-rt-strong"
#PJM --rsc-list "rscunit=rscunit_ft01"
#PJM --rsc-list "rscgrp=dvall"
#PJM --rsc-list "elapse=50:00"
#PJM --rsc-list "node=36x16x48"
#PJM --mpi      "proc=110592"
#PJM -o         "log.rt"
#PJM -j
#PJM -S

module purge
module load lang/tcsds-1.2.24-02

export OMP_NUM_THREADS=12
export OMP_SCHEDULE=static
export OMPI_MCA_plm_ple_memory_allocation_policy=localalloc
export XOS_MMM_L_PAGING_POLICY=demand:demand:demand

SALMON=${HOME}/salmon2-build/salmon
INFILE=rt.inp

# Workaround for the system problem.
mpiexec /work/system/bin/my_clean.sh
mpiexec /work/system/bin/my_cpy.sh ${SALMON}
mpiexec -n ${PJM_MPI_PROC} -stdin ${INFILE} /tmp/`id -u -n`/salmon
mpiexec /work/system/bin/my_clean.sh
