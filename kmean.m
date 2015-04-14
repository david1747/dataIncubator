clear; close

[X,varnames,casenames] = tblread('fto0_tto1.csv', ',');
opts = statset('Display','final');

[idx,ctrs] = kmeans(X,5,'distance','cosine');
%docid=cell(1,106);
%% To create a scarterplot of the clusters use:
%gplotmatrix(X,X,idx,[],[],[],[],[],varnames,varnames);
%axis([0,50],[0,50])
%gplotmatrix(X,X,idx,[],[],[],[],[],docid,docid);
C0=sum(idx==1);d0=C0/length(idx);
C1=sum(idx==2);d1=C1/length(idx);
C2=sum(idx==3);d2=C2/length(idx);
C3=sum(idx==4);d3=C3/length(idx);
C4=sum(idx==5);d4=C4/length(idx);
%[sil5,h]=silhouette(X,idx,'city');
%set(get(gca,'Children'),'FaceColor',[.8 .8 1])
%xlabel('Siouette Value')
%ylabel('Cluster')
%% for a different value of k (e.g., 3), simply change the clustering
%% instruction above to: 
%% [idx,ctrs] = kmeans(X,3);
%%
%cluster5={};
%a=1;
%for i=1:length(idx)
%    if idx(i)==5
 %       cluster5{a,1}=varnames(i,:);
  %      
   %     a=a+1;
   % end
%end
c=find(idx==5);
for i=1:length(c)
varnames(c(i),:)
end
