function [ ids ] = searchSong(song,song_hash)
    ids = [];
    for i = 1:length(song_hash)
        if strcmp(song_hash{i,2},song)
            ids = [ids i];
        end
    end
end