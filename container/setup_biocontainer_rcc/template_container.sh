#!/bin/bash

#########################################
### Wrapper of PLACEHOLDER_CMD container
### =====================================

### container image
IMG="PLACEHOLDER_IMG"

### command name
CMD="PLACEHOLDER_CMD"

### command arguments
ARG="$@"

### execute
singularity exec   \
    -B ${PWD}      \
    -B /data:/data \
    ${IMG} ${CMD} ${ARG}

