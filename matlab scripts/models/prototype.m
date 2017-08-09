function [ idx ] = prototype(X1,playlists)
    %X1 = [10750 62825 6769];%baby one more time, womanizer,toxic

    half_size = length(X1)/2;
    proto = sum(playlists(X1,:))>=half_size;

    lambda = .15;

    hamming_distances = sum(bsxfun(@xor,playlists,proto),2);

    y1 = exp(-lambda.*hamming_distances');
    y1 = y1/sum(y1);

    [val, idx] = sort(y1,'descend');
end