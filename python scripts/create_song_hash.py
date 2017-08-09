#Generates song hash file
##import json
##json_data = open('C:/Users/Tiffany/Documents/MATLAB/Thesis/ucsd_playlist_data/aotm2011_playlists.json')
##P = json.load(json_data)
##f = open('song_hash.txt','w')
##songs = []
##for p in P:
##    playlist = p['playlist']
##    for s in playlist:
##        entry = s[0][0]+'\t'+s[0][1]
##        if entry not in songs:
##            songs.append(entry)
##            f.write(entry.encode('utf-8')+'\n')
##
##f.close()

#Removes duplicates of different case
import pickle
f = open('songs.pickle')
songs = pickle.load(f)
f.close()
f = open('song_hash_lowercase.txt','w')
songs_lowercase = []
for i in range(len(songs)):
    s = songs[i]
    if i%1000 == 0:
        print i/len(songs)
    if s.lower() not in songs_lowercase:
        f.write(s.lower().encode('utf-8')+'\n')
        songs_lowercase.append(s.lower())
        
#Creates sparse matrix
f = open('sparse_matrix.csv','wb')
f2 = open('genre_hash.txt','wb')

i = 0
for playlist in sPickle.s_load(open('playlist_data.spkl')):
    for s in playlist:
        entry = s[0][0]+'\t'+s[0][1]
        ind = songs.index(entry)+1
        f.write(i+','+ind+'\n')
        i += 1
f.close()
f2.close()

#Generates genre and sparse playlist
f = open('sparse_playlist.csv','wb')
f2 = open('genre_hash.txt','wb')

for entry in sPickle.s_load(open('playlist_data.spkl')):
     playlist = entry['playlist']
     f2.write(entry['category']+'\n')
     for s in playlist:
             e = s[0][0]+'\t'+s[0][1]
             ind = songs_lowercase.index(e.lower().encode('utf-8'))+1
             f.write(str(i)+','+str(ind)+'\n')

        
f.close()
f2.close()

#Saves songs to pickle file
##import pickle
##
##with open('songs.pickle', 'w') as f:
##    pickle.dump(songs, f)
