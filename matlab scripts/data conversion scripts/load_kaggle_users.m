users = {};
fid = fopen('kaggle_users.txt');

tline = fgetl(fid);
i = 1;
while ischar(tline)
    users(i) = cellstr(tline);
    tline = fgetl(fid);
    i = i + 1;
end

fclose(fid);

save('users.mat','users');
