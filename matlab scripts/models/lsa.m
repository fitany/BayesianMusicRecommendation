function [ idx ] = lsa(X1,playlists)
    %X1 = [10750 62825 6769];%baby one more time, womanizer,toxic
    
    [T,S,Dt] = svds(playlists,10);
    At=sparse(X1,ones(length(X1),1),ones(length(X1),1))';
    At=[At zeros(1,size(playlists,1)-size(At,2))];
    %d=At*T*inv(S);
    d=At*T/S;
    similarities = zeros(1,size(playlists,2));
    for i=1:length(similarities)
        similarities(1,i) = pdist([d;Dt(i,:)]);
    end
    similarities=similarities./sum(similarities);
    y1 = playlists*similarities';
    [val, idx] = sort(y1,'descend');
end