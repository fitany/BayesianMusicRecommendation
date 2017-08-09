fileID = fopen('D:\Thesis Overflow\EvalDataYear1MSDWebsite\EvalDataYear1MSDWebsite\year1_valid_triplets_hidden.txt');
C = textscan(fileID,'%s %s %d');
fclose(fileID);

user_col = userMSDToId(C{1},users);
song_row = songMSDToId(C{2},songs);
playcount = double(C{3});

valid_hidden= sparse(song_row,user_col,playcount);
save('valid_hidden.mat','valid_hidden');
valid_hidden_bin = valid_hidden > 0;
save('valid_hidden_bin.mat','valid_hidden_bin');