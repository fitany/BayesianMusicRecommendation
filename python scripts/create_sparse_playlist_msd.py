import pickle
import numpy as np
import json
import scipy.io as sio

f= open('echonest_ids_2.pickle')
echonest_ids=pickle.load(f)

json_data = open('C:/Users/Tiffany/Documents/MATLAB/Thesis/ucsd_playlist_data/aotm2011_playlists.json')
P = json.load(json_data)

#Creates sparse matrix
f = open('sparse_playlists_msd.csv','wb')

for i in range(len(P)):
    p = P[i]
    filtered_lists = p['filtered_lists']
    for l in filtered_lists:
        for id in l:
            row = echonest_ids.index(id.encode('utf-8'))+1
            col = i+1
            f.write(str(row)+','+str(col)+'\n')
    if i%1000==0:
        print float(i)/len(P)
f.close()
