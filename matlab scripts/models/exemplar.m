function [ idx ] = exemplar(X1,playlists)
    %X1 = [10750 62825 6769];%baby one more time, womanizer,toxic
    lambda = .15;

    y1 = zeros(1,size(playlists,1));
    for i = 1:length(X1)
        hamming_distances = sum(bsxfun(@xor,playlists,playlists(X1(i),:)),2);
        y1 = y1 + exp(-lambda.*hamming_distances');
    end

    y1 = y1/sum(y1);

    [~, idx] = sort(y1,'descend');
end