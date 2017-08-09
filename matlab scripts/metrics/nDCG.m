function [ score ] = nDCG(ranking,test_set)
    %note normalization constant not implemented
  
    test_set = find(test_set);
    sum = 0;
    %for i=1:length(ranking)
    for i=1:10
        sum = sum + (2.^length(find(test_set==ranking(i))-1))/log(i+1);
    end
    score=sum;
end