FD_WORK=/home/mount/work
FD_RLAB=/home/mount/reddylab
FD_PRJ=/home/mount/project

FD_SRC=${FD_WORK}/source
FD_EXE=${FD_WORK}/exe
FD_ANN=${FD_WORK}/annotation

echo "You are within a singularity image"
echo "BASE DIRECTORY:     ${FD_WORK}" 
echo "PATH OF SOURCE:     ${FD_SRC}"
echo "PATH OF EXECUTABLE: ${FD_EXE}"
echo "PATH OF ANNOTATION: ${FD_ANN}"
echo "PATH OF PROJECT:    ${FD_PRJ}"
echo