import pickle
import numpy as np

f= open('songs_lowercase.pickle','rb')
songs_lowercase=pickle.load(f)
obj_arr = np.zeros((len(songs_lowercase),2), dtype=np.object)
for i in range(len(songs_lowercase)):
    artist=songs_lowercase[i][0:songs_lowercase[i].index('\t')]
    song=songs_lowercase[i][songs_lowercase[i].index('\t')+1:]
    obj_arr[i]=artist.encode('utf-8'),song.encode('utf-8')
    if i%100000==0:
        print float(i)/len(songs_lowercase)
