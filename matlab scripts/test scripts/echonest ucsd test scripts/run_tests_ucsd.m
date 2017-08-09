models = {'numberGamePlaylists', 'tfidf', 'bayesianSets', 'popularity', 'prototype','exemplar'};
pop_thresholds = [-1, 2, 3, 5, 10, 25];
query_sizes = [1, 2, 3, 5, 10, 10000000];

results_query_size_ucsd2 = {};
results_pop_thresholds_ucsd2 = {};

%run on tiffany's mac
for i=1:4
    sprintf('Now running model %s\n',models{i});
    for j=1:6
        sprintf('Running %s on query size %d\n',models{i},query_sizes(j))
        results_query_size_ucsd2{i,j} = test_harness_ucsd(-1,query_sizes(j),str2func(models{i}));
    end
end
save('results_query_size_ucsd2.mat','results_query_size_ucsd2');

for i=1:4
    sprintf('Now running model %s\n',models{i});
    for j=1:4
        sprintf('Running %s on pop threshold %d\n',models{i},pop_thresholds(j))
        results_pop_thresholds_ucsd2{i,j} = test_harness_ucsd(pop_thresholds(j),10000000,str2func(models{i}));
    end
end
save('results_pop_thresholds_ucsd2.mat','results_pop_thresholds_ucsd2');