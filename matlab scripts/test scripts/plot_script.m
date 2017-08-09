%MSDC Query Size Plots
%{
results = mAP_query_size;
colormap(gray(255))
imagesc(-results)
colorbar()
title('mAP, MSDC, Query Sizes')
xlabel('Query Sizes')
ylabel('Models')
set(gca,'XTickLabel',{'1','2','3','5','10','all'})
set(gca,'YTickLabel',{'','Bayes Gen.','','TF-IDF','','Bayes Sets','','Popularity'})
%}

%MSDC Pop Threshold Plots
%{
results = mAP_pop_thresholds;
colormap(gray(255))
imagesc(-results)
colorbar()
title('mAP, MSDC, Pop Thresholds')
xlabel('Pop Threshold')
ylabel('Models')
set(gca,'XTickLabel',{'none','10','25','50','100','200'})
set(gca,'YTickLabel',{'','Bayes Gen.','','TF-IDF','','Bayes Sets','','Popularity'})
%}

%AOTM-2011 Query Size Plots
%{
results = mAP_query_size2;
colormap(gray(255))
imagesc(-results)
colorbar()
title('mAP, AOTM-2011, Query Sizes')
xlabel('Query Sizes')
ylabel('Models')
set(gca,'XTickLabel',{'1','2','3','5','10','all'})
set(gca,'YTickLabel',{'','Bayes Gen.','','TF-IDF','','Bayes Sets','','Popularity'})
%}

%AOTM-2011 Pop Threshold Plots
%
results = mAP_pop_thresholds2;
colormap(gray(255))
imagesc(-results)
colorbar()
title('mAP, AOTM-2011, Pop Thresholds')
xlabel('Pop Threshold')
ylabel('Models')
set(gca,'XTickLabel',{'','none','','2','','3','','5'})
set(gca,'YTickLabel',{'','Bayes Gen.','','TF-IDF','','Bayes Sets','','Popularity'})
%