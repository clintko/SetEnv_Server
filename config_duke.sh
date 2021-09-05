### Check which duke server I am at
if echo $(pwd) | grep -q "gpfs"; then
    echo "You are on Duke Server: HARDAC"
    FD_BASE="/data/reddylab/Kuei"
fi

if echo $(pwd) | grep -q "hpc"; then
    echo "You are on Duke Server: DCC"
    FD_BASE="/work/kk319"
fi

FD_SRC=${FD_BASE}/source
FD_EXE=${FD_BASE}/exe
FD_ANN=${FD_BASE}/annotation

echo "BASE DIRECTORY:     ${FD_BASE}" 
echo "PATH OF SOURCE:     ${FD_SRC}"
echo "PATH OF EXECUTABLE: ${FD_EXE}"
echo "PATH OF ANNOTATION: ${FD_ANN}"
echo