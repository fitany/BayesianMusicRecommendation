function [ ids ] = searchArtist(artist,song_hash)
    ids = [];
    for i = 1:length(song_hash)
        if strcmp(song_hash{i,3},artist)
            ids = [ids i];
        end
    end
end