import pickle
import numpy as np
import json
import scipy.io as sio

json_data = open('C:/Users/Tiffany/Documents/MATLAB/Thesis/ucsd_playlist_data/aotm2011_playlists.json')
P = json.load(json_data)

#Creates hash for echonest ids
#f = open('echonest_hash.txt','wb')
echonest_set = set()
#echonest_ids = []

obj_arr = np.zeros((119894,3), dtype=np.object)
ind = 0

for i in range(len(P)):
    p = P[i]
    playlists = p['playlist']
    for p in playlists:
        if p[1] is not None:
            if p[1] not in echonest_set:
                echonest_set.add(p[1])
                #echonest_ids.append(p[1])
                track = p[1].encode('ascii','ignore')
                song = p[0]
                artist = song[0].lower().encode('ascii','ignore')
                title = song[1].lower().encode('ascii','ignore')
                obj_arr[ind]=track,title,artist
                ind = ind + 1
                #f.write(str(track)+'###'+str(title)+'###'+str(artist)+';#&')
    if i%1000==0:
        print float(i)/len(P)
f.close()

#with open('echonest_ids_2.pickle', 'w') as f:
#    pickle.dump(echonest_ids, f)
