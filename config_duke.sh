### Check which duke server I am at
if echo $(pwd) | grep -q "gpfs"; then
    echo "You are on Duke Server: HARDAC"
    FD_PREFIX="/gpfs/fs1"
    FD_WORK=${FD_PREFIX}/data/reddylab/Kuei
    FD_CODE=${FD_PREFIX}/data/reddylab/Kuei/GitRepo
    FD_RLAB=${FD_PREFIX}/data/reddylab
    FD_SING=${FD_WORK}/singularity
fi

if echo $(pwd) | grep -q "hpc"; then
    echo "You are on Duke Server: DCC"
    FD_PREFIX="/hpc"
    FD_WORK=/work/kk319
    FD_CODE=${FD_PREFIX}/home/kk319/GitRepo
    FD_RLAB=${FD_PREFIX}/group/reddylab
    FD_SING=${FD_RLAB}/Kuei/singularity
fi

FD_PRJ=${FD_CODE}/Settool_Bio
FD_SRC=${FD_WORK}/source
FD_EXE=${FD_WORK}/exe
FD_ANN=${FD_WORK}/annotation

echo "BASE DIRECTORY:     ${FD_WORK}" 
echo "PATH OF SOURCE:     ${FD_SRC}"
echo "PATH OF EXECUTABLE: ${FD_EXE}"
echo "PATH OF ANNOTATION: ${FD_ANN}"
echo "PATH OF PROJECT:    ${FD_PRJ}"
echo