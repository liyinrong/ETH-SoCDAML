#!/bin/bash
# this script is to make sure that a version is launched with is compatible with the scripts
matlab-2022b -sd "$(dirname -- "$(readlink -f "${BASH_SOURCE}")")/src/matlab"
