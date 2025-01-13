### ++++++++++++++++++++++++++++++++++++++++++++++++++++
### Set environment
### ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

### Hack to handle broekn pipes - IGNORE.
cleanup () {
    :
}
trap "cleanup" SIGPIPE

### Treat unset variables as an error, and immediately exit.
set -u

### ++++++++++++++++++++++++++++++++++++++++++++++++++++
### Identify the environment and set main working paths
###     Check which duke server I am at
###     set correct path based on the server I am at
### ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

if echo $(pwd -P) | grep -q "gpfs"; then
    ### workspace info
    SERVER=HARDAC
    NODE=all
   
    ### main paths
    FD_BASE=/data/reddylab/Kuei
    FD_WORK=/data/reddylab/Kuei/out
    FD_CODE=/data/reddylab/Kuei/code
    FD_SING=/data/reddylab/Kuei/singularity
    FD_RLAB=/data/reddylab
    
    ### set other working paths
    FD_ANN=${FD_BASE}/annotation
    FD_BIN=${FD_BASE}/bin
    FD_SRC=${FD_BASE}/source
    FD_BAC=${FD_BASE}/backup
fi

if echo $(pwd -P) | grep -q "hpc"; then
    ### workspace info
    SERVER=DCC
    NODE=scavenger
    
    FD_PREFIX="/hpc"
    FD_WORK=/work/kk319
    FD_CODE=${FD_PREFIX}/home/kk319/GitRepo
    FD_RLAB=${FD_PREFIX}/group/reddylab
    FD_SING=${FD_RLAB}/Kuei/singularity
    
    ### set working paths
    FD_ANN=${FD_RLAB}/Kuei/annotation
    FD_SRC=${FD_RLAB}/Kuei/source
    FD_EXE=${FD_RLAB}/Kuei/exe
fi

### ++++++++++++++++++++++++++++++++++++++++++++++++++++
### Set relative paths specific for the projects
### ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

### set project related paths
#FD_PRJ=${FD_CODE}/Proj_CombEffect_ENCODE_FCC
#FD_RES=${FD_WORK}/proj_combeffect_encode_fcc
#FD_LOG=${FD_WORK}/proj_combeffect_encode_fcc/log
#FP_SIF=${FD_SING}/singularity_proj_combeffect.sif
