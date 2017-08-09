function idToSong(id,song_hash)
    for i = 1:length(id)
        fprintf('%s\t%s\n',song_hash{id(i),2},song_hash{id(i),3});
    end
end