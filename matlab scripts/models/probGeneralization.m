% function: probGeneralization_soln.m
% input: 
%    X: the observed numbers in a row vector
%    hyps: the matrix of hypotheses (the numbers 1-100 x 5083 hypotheses )
%    prior: the prior distribution over hypotheses (a row vector of length 5083)
%
% output:
%    numberProbs: a row vector containing the probability of each number
%       belonging in the same number concept as the observed set X
%       HINT: should be a vector of length 100

%{
function [ numberProbs ] = probGeneralization(X, hyps, prior)
    numberProbs = sum(bsxfun(@times,hyps,computePosterior(X, hyps, prior)),2)';
end
%}

function [ numberProbs ] = probGeneralization(X, hyps, prior)
    p=computePosterior(X, hyps, prior);
    numberProbs = hyps*p';
end