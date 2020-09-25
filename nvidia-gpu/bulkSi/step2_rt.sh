#! /bin/bash

SALMON=${HOME}/salmon2-build/salmon
INPUTFILE=./Si_rt_pulse.inp
LOGFILE=./RT_output.log

export OMP_SCHEDULE=static
export OMP_NUM_THREADS=` cat /proc/cpuinfo | grep 'core id' | wc -l`

{
  uname -a
  cat /etc/redhat-release
  cat /proc/cpuinfo | grep 'model name' | head -n1
  echo "`grep physical.id /proc/cpuinfo | sort -u | wc -l` socket"
  ifort --version
  numactl --localalloc ${SALMON} < ${INPUTFILE}
} |& tee ${LOGFILE}
