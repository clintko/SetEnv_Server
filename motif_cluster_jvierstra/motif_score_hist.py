### set env 
import numpy as np
import pandas as pd
import itertools as it
import os
import pickle

import distogram
import gzip

### start timer
import time
from datetime import timedelta
start_time = time.monotonic()

### initialize a histogram object
h = distogram.Distogram()

### stream and calculate histogram
fdiry="/home/mount/work/source/motif_cluster_jvierstra"
fname="hg38.archetype_motifs.v1.0.bed.gz"
fpath=os.path.join(fdiry, fname)

with gzip.open(fpath, "r") as f:
    
    for idx, line in enumerate(f):
    
        ### show progress
        if idx % 1000000 == 0:
            print("Line:", idx, flush=True)
        
        ### extract values
        lst = line.strip().split(b"\t")
        val = lst[4].decode("utf-8")
        val = float(val)
        
        ### update distribution
        h = distogram.update(h, val)
        
### save histogram odject as a pickle file
fdiry="/home/mount/work/annotation/motif_cluster_jvierstra"
fname="motif_score_histogram.pickle"
fpath=os.path.join(fdiry, fname)

with open(fpath, "wb") as f:
    pickle.dump(h, f)

### stop timer and show end message
end_time = time.monotonic()
print("======================================")
print("Done!")
print("Duration:")
print(timedelta(seconds=end_time - start_time))
