import pickle
import scipy.io as sio
import numpy as np

obj_arr = np.zeros((834003,2), dtype=np.object)

f = open('songs.pickle')
songs = pickle.load(f)
f.close()
f = open('song_hash_lowercase.txt','w')
songs_lowercase = []
for i in range(len(songs)):
    s = songs[i]
    if i%1000 == 0:
        print float(i)/len(songs)
    if s.lower() not in songs_lowercase:
        f.write(s.lower().encode('utf-8')+'\n')
        songs_lowercase.append(s.lower())
