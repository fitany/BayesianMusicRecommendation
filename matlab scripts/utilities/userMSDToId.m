function [ user_id ] = userMSDToId(user_MSD,user_hash)
    [~, user_id] = ismember(user_MSD,user_hash);
    %user_id = find(strcmp(user_hash, user_MSD));
end