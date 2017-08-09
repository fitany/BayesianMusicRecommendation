%% Quick lookups
%X1 = [10750 62825 6769];%baby one more time, womanizer,toxic
%X1 = [11403 2879 17575];%billie jean, thriller,the way you make me feel
%X1 = 2879;%thriller
%X1 = 2252;%harder better faster stronger

if ~exist('echonestHash','var')
    load('echonest_hash.mat');
end

training = [11403 2879 17575];
testing = searchArtist('michael jackson',echonestHash);

ranking_numberGamePlaylists = numberGamePlaylists(training);
ranking_exemplar = exemplar(training);
%ranking_prototype = prototype(training);
ranking_popularity = popularity(training);
ranking_bayesianSets = bayesianSets(training);
ranking_lsa = lsa(training);
ranking_tfidf = tfidf(training);

fprintf('===mAP scores===\n')
fprintf('numberGamePlaylists:%.4d\n',mAP(ranking_numberGamePlaylists,testing))
fprintf('exemplar:%.4d\n',mAP(ranking_exemplar,testing))
%fprintf('prototype:%.4d\n',mAP(ranking_prototype,testing))
fprintf('popularity:%.4d\n',mAP(ranking_popularity,testing))
fprintf('bayesianSets:%.4d\n',mAP(ranking_bayesianSets,testing))
fprintf('lsa:%.4d\n',mAP(ranking_lsa,testing))
fprintf('tfidf:%.4d\n',mAP(ranking_tfidf,testing))

fprintf('\n===MRR scores===\n');
fprintf('numberGamePlaylists:%.4d\n',MRR(ranking_numberGamePlaylists,testing))
fprintf('exemplar:%.4d\n',MRR(ranking_exemplar,testing))
%fprintf('prototype:%.4d\n',MRR(ranking_prototype,testing))
fprintf('popularity:%.4d\n',MRR(ranking_popularity,testing))
fprintf('bayesianSets:%.d\n',MRR(ranking_bayesianSets,testing))
fprintf('lsa:%.4d\n',MRR(ranking_lsa,testing))
fprintf('tfidf:%.4d\n',MRR(ranking_tfidf,testing))

fprintf('\n===nDCG scores===\n');
fprintf('numberGamePlaylists:%.4d\n',nDCG(ranking_numberGamePlaylists,testing))
fprintf('exemplar:%.4d\n',nDCG(ranking_exemplar,testing))
%fprintf('prototype:%.4d\n',nDCG(ranking_prototype,testing))
fprintf('popularity:%.4d\n',nDCG(ranking_popularity,testing))
fprintf('bayesianSets:%.4d\n',nDCG(ranking_bayesianSets,testing))
fprintf('lsa:%.4d\n',nDCG(ranking_lsa,testing))
fprintf('tfidf:%.4d\n',nDCG(ranking_tfidf,testing))
