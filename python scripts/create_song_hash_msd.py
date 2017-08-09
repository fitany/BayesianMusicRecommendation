import pickle
import numpy as np
import scipy.io as sio

f= open('echonest_ids.pickle')
echonest_ids=pickle.load(f)
obj_arr = np.zeros((len(echonest_ids),1), dtype=np.object)
for i in range(len(echonest_ids)):
    obj_arr[i]=echonest_ids[i]
    if i%100000==0:
        print float(i)/len(echonest_ids)

sio.savemat('echonestIDs.mat', {'obj_arr': obj_arr})
