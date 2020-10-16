#! /bin/bash
#
#   Copyright 2020 SALMON developers
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#

SALMON2_SOURCE_PATH=/work/`id -gn`/`id -un`/SALMON2
SALMON2_BUILD_PATH=/work/`id -gn`/`id -un`/salmon2-build/intel

mkdir ${SALMON2_BUILD_PATH}
cd ${SALMON2_BUILD_PATH}

module purge
module load intel/19.0.5 intmpi/19.0.5

# Please install CMake version 3.14 or newer to login node...
#module load cmake/3.16.5

${SALMON2_SOURCE_PATH}/configure.py --prefix=intel-avx512 --enable-scalapack --enable-eigenexa
make -j8
