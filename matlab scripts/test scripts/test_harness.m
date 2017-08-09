%function [ mAP,mMMR, mnDCGs] = test_harness(T,N,model)
function results = test_harness(T,N,model) %new plan is to save the rankings first
    clear valid_hidden_bin
    clear playlists_kaggle_bin

    if ~exist('playlists_kaggle_bin','var')
        load('data/playlists_kaggle_bin.mat');
    end
    if ~exist('data/valid_hidden_bin','var')
        load('data/valid_hidden_bin.mat');
    end
    if ~exist('valid_visible_bin','var')
        load('data/valid_visible_bin.mat');
    end

    playcounts = sum(playlists_kaggle_bin,2);
    playlists_kaggle_bin = playlists_kaggle_bin(find(playcounts>T),:);
    valid_hidden_bin = valid_hidden_bin(find(playcounts>T),:);
    
    %APs = zeros(1,size(playlists_kaggle_bin,2));
    %APs = zeros(1,size(playlists_kaggle_bin,2));
    %MRRs = zeros(1,size(playlists_kaggle_bin,2));
    %nDCGs = zeros(1,size(playlists_kaggle_bin,2));
    
    %38621
    results = zeros(500,100);%first 500 songs in idx's, only the first 10th of users
    
    %for i=1:size(playlists_kaggle_bin,2)
    for i=1:100
        X1 = find(playlists_kaggle_bin(:,i));
        if length(X1)>=N
            shuffleX1=X1(randperm(length(X1)));
            X1=shuffleX1(1:N);
        end
        idx = model(X1,playlists_kaggle_bin);
        results(:,i) = idx(1:500)';

        %{
        if(sum(valid_hidden_bin(:,i))==0)
            APs(i)=NaN;
            MRRs(i)=NaN;
            nDCGs(i)=NaN;
        else
            idx = model(X1,playlists_kaggle_bin);
            idx = idx(~ismember(idx,find(playlists_kaggle_bin(idx,i))));
            APs(i)=AP(idx,valid_hidden_bin(:,i));
            MRRs(i)=MRR(idx,valid_hidden_bin(:,i));
            nDCGs(i)=nDCG(idx,valid_hidden_bin(:,i));
        end
        %}
        if mod(i,100)==0
            sprintf('Progress:%f\n',i/38621)
        end
    end

    
    %mAP = nanmean(APs)
    %mMMR = nanmean(MRRs)
    %mnDCGs = nanmean(nDCGs)
end

