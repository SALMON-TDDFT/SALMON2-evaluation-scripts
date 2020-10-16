# Performance evaluation for NVIDIA GPU

- `build_cygnus_intel.sh`
    - A build script for supercomputer Cygnus@CCS, U. Tsukuba.
    - with Intel compiler 19.0.5, Intel MPI 19.0.5 and Intel MKL 19.0.5
- `build_cygnus_pgi.sh`
    - A build script for supercomputer Cygnus@CCS, U. Tsukuba.
    - with PGI compiler 19.10, OpenMPI 3.1.6 and Intel MKL 19.0.5
- `bulkSi/`
    - bulk Sillicon simulation is based on exercises 4 and 6.
    - Jobscripts use the application of Intel compiler version.
- `SiO2/`
    - SiO2 simulation (single-scale Maxwell-TDDFT with MD).
    - Jobscripts use the application of Intel compiler version.

## IMPORTANT NOTICE

- We aim the performance evaluation on V100 and A100 GPUs with PGI compiler 19.10 and higher (of course, includes NVIDIA HPC SDK).
