metrics = {'Pat10', 'AP', 'nDCG', 'MRR'};
pop_thresholds = [-1, 10, 25 50, 100, 200];
current_metric_function = str2func(metrics{2});
results = zeros(4,6);

clear valid_hidden_bin
clear playlists_kaggle_bin
load('data/playlists_kaggle_bin.mat');
load('data/valid_hidden_bin.mat');

for j=1:6
    
    clear valid_hidden_bin
    clear playlists_kaggle_bin
    load('data/playlists_kaggle_bin.mat');
    load('data/valid_hidden_bin.mat');
    T=pop_thresholds(j);
    
    
    playcounts = sum(playlists_kaggle_bin,2);
    playlists_kaggle_bin = playlists_kaggle_bin(find(playcounts>T),:);
    valid_hidden_bin = valid_hidden_bin(find(playcounts>T),:);
    
    for i=1:4
        i
        j
        blah = apply_metric(results_pop_thresholds_tiff1{i,j},valid_hidden_bin,current_metric_function)
        results(i,j)=blah;
    end
end

results
mAP_pop_thresholds=results;
save('mAP_pop_thresholds.mat','mAP_pop_thresholds');
