#!/bin/bash

### Stackoverflow: how-can-i-get-the-source-directory-of-a-bash-script-from-within-the-script-itself
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source ${SCRIPT_DIR}/config_duke.sh

singularity exec \
    -H ${PWD}:/home \
    -B ${FD_WORK}:/home/mount/work \
    -B ${FD_PRJ}:/home/mount/project \
    -B ${FD_RLAB}:/home/mount/reddylab \
    ${FD_SING}/singularity_proj_combeffect.sif "$@"
    
rm -rf ${PWD}/mount
