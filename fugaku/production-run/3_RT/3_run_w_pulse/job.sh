#!/bin/bash
#PJM -N         "SiO2102224atomRT"
#PJM --rsc-list "rscunit=rscunit_ft01"
#PJM --rsc-list "rscgrp=dvall"
#PJM --rsc-list "node=48x12x48"
#PJM --mpi      "proc=110592"
#PJM --rsc-list "elapse=6:00:00"
#PJM -j
#PJM -S

module purge
module load lang/tcsds-1.2.24-02

export OMP_NUM_THREADS=12
export OMP_SCHEDULE=static
export OMPI_MCA_plm_ple_memory_allocation_policy=bind_local
export XOS_MMM_L_PAGING_POLICY=demand:demand:demand

SALMON=${HOME}/salmon2-build/salmon
INFILE=SiO2.inp

mpiexec -n ${PJM_MPI_PROC} -stdin ${INFILE} ${SALMON}
