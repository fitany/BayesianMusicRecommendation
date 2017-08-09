function [ idx ] = tfidf(X1,playlists)
    %X1 = [10750 62825 6769];%baby one more time, womanizer,toxic
    %X1 = [11403 2879 17575];%billie jean, thriller,the way you make me feel
    %X1 = 2879;%thriller
    %X1 = 2252;%harder better faster stronger

    tf = playlists(X1,:);
    idf = 1./sum(playlists(X1,:),2);
    result = zeros(1,size(playlists,2));
    for i=1:length(X1)
        result = result + tf(i,:).*idf(i);
    end

    y1 = playlists*result';
    [~, idx] = sort(y1,'descend');
end