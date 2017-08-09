function [ score ] = AP(ranking,test_matrix_col)
    if sum(test_matrix_col)==0
        score = NaN;
    else
        tau = 500;
        precision = zeros(1,tau);
        for k = 1:tau
            precision(k)=sum(test_matrix_col(ranking(1:k)))/k;
        end

        n=min([tau,sum(test_matrix_col)]);
        summ=0;
        for k = 1:tau
            summ=summ + precision(k) * test_matrix_col(ranking(k));
        end
        score=summ/n;
    end
end