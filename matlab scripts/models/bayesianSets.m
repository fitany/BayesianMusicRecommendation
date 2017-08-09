function [ idx ] = bayesianSets(X1,playlists)
    %X1 = [2252,2757,5011];
    %X1 = [11403 2879 17575];

    query = playlists(X1,:);
    N = length(X1);
    %calculate c
        %calculate mean vector
        m = mean(playlists);
        %calculate alpha vector
        alpha = 2 * m;
        %calculate alpha squiggle
        alpha_s = alpha + sum(query);
        %calculate beta vector
        beta = 2 * (1 - m);
        %calculate beta squiggle
        beta_s = beta + N - sum(query);
    c=sum(log(alpha+beta)-log(alpha+beta+N)+log(beta_s)-log(beta));
    %calculate q vector
    q=log(alpha_s)-log(alpha)-log(beta_s)+log(beta);

    y1 = c + playlists*q';

    [val, idx] = sort(y1,'descend');
end