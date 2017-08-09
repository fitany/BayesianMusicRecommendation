%input two matrices
function [ score ] = apply_metric(rankings,actual,metric_function)
    scores = zeros(1,size(rankings,2));
    for i=1:size(rankings,2)
        test_matrix_col=actual(:,i);
        ranking=rankings(:,i);
        
        if sum(test_matrix_col)==0
            scores(i) = NaN;
        else
            scores(i)=metric_function(ranking,test_matrix_col);
        end
    end
    score=nanmean(scores);
end