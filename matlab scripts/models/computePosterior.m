function [ hypothesisProbs ] = computePosterior(X, hyps, prior)
    epsilon = 1e-15;
    
    likelihood = ((epsilon + (1-epsilon)./sum(hyps,1)).^(sum(hyps(X,:),1))).*(epsilon.^(length(X)-sum(hyps(X,:),1)));
    posterior = likelihood .* prior;
    hypothesisProbs = posterior/sum(posterior);
end

%slow calculation of likelihood
        %{
        likelihood = 1;
        for j=1:length(X)
            if h(X(j))
                likelihood = likelihood *(epsilon + (1-epsilon)/sum(h));
            else
                likelihood = likelihood * epsilon;
            end
        end
        %}
%slow calculation of posterior
%{
    posterior = zeros(size(prior));
    for i=1:size(prior,2)
        h = hyps(:,i);
        likelihood = ((epsilon + (1-epsilon)/sum(h))^(sum(h(X))))*(epsilon^(length(X)-sum(h(X))));
        posterior(i) = likelihood .* prior(i);
    end
%}