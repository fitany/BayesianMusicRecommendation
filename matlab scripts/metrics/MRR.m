function [ score ] = MRR(ranking,test_set)
    test_set = find(test_set);
    rr=zeros(1,length(test_set));
    for i=1:length(test_set)
        temp = 1/find(ranking==test_set(i));
        if size(temp,2)==0 || temp == inf
            rr(i)=0;
        else
            rr(i)=temp;
        end
    end
    score=nanmean(rr);
end