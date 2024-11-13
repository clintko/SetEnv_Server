#!/bin/bash

########################################
### Wrapper of bedtools container
########################################

IMAGE=/data/reddylab/Kuei/container/biocontainer/bedtools:2.31.1--hf5e1c6e_1

CMD="bedtools"
ARGS="$@"

singularity exec \
    -B ${PWD}      \
    -B /data:/data \
    -B /gpfs:/gpfs \
    ${IMAGE} ${CMD} ${ARGS}
