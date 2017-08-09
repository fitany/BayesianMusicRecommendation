function plotPrecision(ranking,test_set)
    tau=10000;
    precision = zeros(tau);
    recall = zeros(tau);
    for k = 1:tau
        recall(k)=length(intersect(ranking(1:k),test_set))./length(test_set);
        precision(k)=mean(length(intersect(ranking(1:k),test_set))./k);
    end
    plot(recall,precision)
    title('Recall vs. Precision')
    xlabel('Recall')
    ylabel('Precision')
end