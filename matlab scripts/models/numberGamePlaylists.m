function [ idx ] = numberGamePlaylists(X1,playlists)
    %X1 = [10750 62825 6769];%baby one more time, womanizer,toxic
    %X1 = [11403 2879 17575];%billie jean, thriller,the way you make me feel
    %X1 = 2879;%thriller
    %X1 = 2252;%harder better faster stronger
    
    sigma=10;
    prior=sum(playlists);
    prior=prior./sigma^2.*exp(-1*prior./sigma);
    prior=prior./sum(prior);
    y1 = probGeneralization(X1,playlists,prior);

    [val, idx] = sort(y1,'descend');
end