[i,j,s] = find(playlists_no_duplicates);
dim = length(i)/4;
shuffleRows=i(randperm(length(i)));
i = i(shuffleRows);
j = j(shuffleRows);
s = s(shuffleRows);
visible=sparse(i(1:dim),j(1:dim),s(1:dim));
hidden=sparse(i(dim+1:end),j(dim+1:end),s(dim+1:end));
