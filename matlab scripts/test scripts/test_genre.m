%for i = 1:51
    %fprintf('%d\n',songMSDToId(echonestHash{blah(i)},songs));
    %idToSong(blah(i),echonestHash)
    %fprintf('%d\n',blah(i))
%end

%X1 = [203463 107121 296088];%thriller, the way you make me feel, lady (?)
X1 = [107121];
idx = bayesianSets(X1,playlists_kaggle_bin);
idx = idx(~ismember(idx,find(playlists_kaggle_bin(idx,i))));
verify = [135378 163622 367858 91319 62582 199490 307687 148466 320790 111229 336994 121393 295107 112505 76434 7757];
valid = zeros(size(playlists_kaggle_bin,1),1);
valid(verify) = 1;
valid = sparse(valid);
AP(idx,valid)
