function results = test_harness_ucsd(T,N,model) 
    load playlists_no_duplicates_train2

    playcounts = sum(playlists_no_duplicates_train2,2);
    playlists_no_duplicates_train2 = playlists_no_duplicates_train2(find(playcounts>T),:);
    
    results = zeros(500,size(playlists_no_duplicates_train2,2));
    for i=1:size(playlists_no_duplicates_train2,2)
        X1 = find(playlists_no_duplicates_train2(:,i));
        if length(X1)>=N
            shuffleX1=X1(randperm(length(X1)));
            X1=shuffleX1(1:N);
        end
        idx = model(X1,playlists_no_duplicates_train2);
        results(:,i) = idx(1:500)';

        if mod(i,100)==0
            sprintf('Progress:%f\n',i/size(playlists_no_duplicates_train2,2))
        end
    end

end

