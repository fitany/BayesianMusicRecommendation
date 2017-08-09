metrics = {'Pat10', 'AP', 'nDCG', 'MRR'};
pop_thresholds = [-1, 2, 3, 5, 10, 25];
current_metric_function = str2func(metrics{2});
results = zeros(4,4);

clear playlists_no_duplicates_test2
clear playlists_no_duplicates_train2
load playlists_no_duplicates_train2.mat
load playlists_no_duplicates_test2.mat

for j=1:4
    
    clear playlists_no_duplicates_test2
    clear playlists_no_duplicates_train2
    load playlists_no_duplicates_train2.mat
    load playlists_no_duplicates_test2.mat

    T=pop_thresholds(j);
    
    playcounts = sum(playlists_no_duplicates_train2,2);
    playlists_no_duplicates_train2 = playlists_no_duplicates_train2(find(playcounts>T),:);
    playlists_no_duplicates_test2 = playlists_no_duplicates_test2(find(playcounts>T),:);
    
    for i=1:4
        i
        j
        blah = apply_metric(results_pop_thresholds_ucsd2{i,j},playlists_no_duplicates_test2,current_metric_function)
        results(i,j)=blah;
    end
end

results
mAP_pop_thresholds2=results;
save('mAP_pop_thresholds2.mat','mAP_pop_thresholds2');