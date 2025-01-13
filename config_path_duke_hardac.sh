### ++++++++++++++++++++++++++++++++++++++++++++++++++
### set workspace info
### ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

SERVER="Duke Server: HARDAC"
PROJECT="ENCODE FCC"

### ++++++++++++++++++++++++++++++++++++++++++++++++++
### set work folder
### ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
FD_RLAB="/data/reddylab"
FD_BASE="/data/reddylab/Kuei"

FD_WORK="${FD_BASE}/work"
FD_DATA="${FD_BASE}/data"
FD_REPO="${FD_BASE}/repo"
FD_SING="${FD_BASE}/container"

### fun show environment
show_env() {
    echo "You are working on             ${SERVER}"
    echo "BASE DIRECTORY (FD_BASE):      ${FD_BASE}" 
    echo "REPO DIRECTORY (FD_REPO):      ${FD_REPO}"
    echo "WORK DIRECTORY (FD_WORK):      ${FD_WORK}"
    echo "DATA DIRECTORY (FD_DATA):      ${FD_DATA}"
    echo "CONTAINER DIR. (FD_SING):      ${FD_SING}"
    echo
}