models = {'numberGamePlaylists', 'tfidf', 'bayesianSets', 'popularity', 'prototype','exemplar', 'lsa'};
pop_thresholds = [-1, 10, 25 50, 100, 200];
query_sizes = [10000000, 1, 2, 3, 5, 10];

%results_pop_thresholds = zeros(7,6,3);
%results_query_size = zeros(7,6,3);
results_pop_thresholds = {};
results_query_size = {};

%run on Tiffany's laptop
for i=5:6
    sprintf('Now running model %s\n',models{i});
    for j=1:6
        sprintf('Running %s on pop threshold %d\n',models{i},pop_thresholds(j))
        results_pop_thresholds{i,j} = test_harness(pop_thresholds(j),10000000000,str2func(models{i}));
        save('results_pop_thresholds_2.mat','results_pop_thresholds');
        %[ mAP,mMMR, mnDCGs] = test_harness(pop_thresholds(j),10000000000,str2func(models{i}));
        %results_pop_thresholds(i,j,1) = mAP;
        %results_pop_thresholds(i,j,2) = mMMR;
        %results_pop_thresholds(i,j,3) = mnDCGs;
    end
end

%run on laplace
for i=5:6
    sprintf('Now running model %s\n',models{i});
    for j=1:6
        sprintf('Running %s on query size %d\n',models{i},query_size(j))
        results_query_size{i,j} = test_harness(pop_thresholds(j),10000000000,str2func(models{i}));
        save('results_query_size2.mat',results_pop_thresholds);
        %[ mAP,mMMR, mnDCGs] = test_harness(-1,query_sizes(j),str2func(models{i}));
        %results_query_size(i,j,1) = mAP;
        %results_query_size(i,j,2) = mMMR;
        %results_query_size(i,j,3) = mnDCGs;
    end
end
