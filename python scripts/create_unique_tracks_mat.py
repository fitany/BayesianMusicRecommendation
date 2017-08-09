import numpy as np
import scipy.io as sio

f = open('unique_tracks.txt')

#obj_arr = np.zeros((1000000,4), dtype=np.object)
##ind = 0
##for line in f:
##    l = line
##    track_id = l[0:l.index('<SEP>')]
##    l = l[l.index('<SEP>')+5:]
##    song_id = l[0:l.index('<SEP>')]
##    l = l[l.index('<SEP>')+5:]
##    title = l[0:l.index('<SEP>')]
##    artist = l[l.index('<SEP>')+5:-1]
##    obj_arr[ind]=track_id,song_id,title,artist
##    ind = ind + 1
##    if ind%10000==0:
##        print float(ind)/1000000
##f.close()
i = 0
blah = f.readline()
while blah != '':
    blah = f.readline()
    #print blah
    i = i + 1
    #print i
print i
f.close()
#sio.savemat('tracks.mat', {'tracks':obj_arr})
