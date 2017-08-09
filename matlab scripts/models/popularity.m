function [ idx ] = popularity(X1,playlists)
    y1=sum(playlists,2);

    [val, idx] = sort(y1,'descend');
end