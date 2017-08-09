function [ score ] = Pat10(ranking,test_matrix_col)
    score = sum(test_matrix_col(ranking(1:10)))/10;
end