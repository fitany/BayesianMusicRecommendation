function [ song_id ] = songMSDToId(song_MSD,song_hash)
    [~, song_id] = ismember(song_MSD,song_hash);
    %song_id = find(strcmp(song_hash, song_MSD));
end