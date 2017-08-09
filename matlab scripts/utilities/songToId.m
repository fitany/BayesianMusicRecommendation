function [ ids ] = songToId(song_msd,song_hash)
    ids = find(strcmp(song_hash(:,1), song_msd));
end