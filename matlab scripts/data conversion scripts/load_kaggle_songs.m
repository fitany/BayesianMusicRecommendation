songs = {};
fid = fopen('kaggle_songs.txt');

tline = fgetl(fid);
i = 1;
while ischar(tline)
    C = textscan(tline, '%s', 'delimiter', ' ');
    C=C{1};
    songs(i) = cellstr(C(1));
    tline = fgetl(fid);
    i = i + 1;
end

fclose(fid);

save('songs.mat','songs');
