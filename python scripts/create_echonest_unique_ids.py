#This script will open the aotm JSON file and create a list of unique EchoNest IDs
import json
json_data = open('C:/Users/Tiffany/Documents/MATLAB/Thesis/ucsd_playlist_data/aotm2011_playlists.json')
P = json.load(json_data)
echonest_set = set()
songs = []
for p in P:
    filtered_lists = p['filtered_lists']
    for l in filtered_lists:
        for id in l:
            echonest_set.add(id.encode('ascii','ignore'))
	    
echonest_ids = list(echonest_set)

#Saves echonest_hash to pickle file
import pickle
with open('echonest_ids.pickle', 'w') as f:
    pickle.dump(echonest_ids, f)
