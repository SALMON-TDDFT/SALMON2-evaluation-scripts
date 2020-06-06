# Performance evaluation for Fugaku@RIKEN R-CCS, Japan

- `build.sh`
    - A build script for the system optimized application.
- `weak-scaling/`
    - The weak scalability check to 432-27648 compute nodes.
- `strong-scaling/`
    - The strong scalability check to 6912-27648 compute nodes.
    - Before the evaluation, the GS part should be executed at `weak-scaling/n06912`.

## IMPORTANT NOTICE

- Fugaku is constructing now, the build environment  like the compiler and libraries is frequently updating.
- In the scalability evaluation, the GS simulation is roughly calculated because we focus the performance of RT simulation.
