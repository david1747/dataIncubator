
clc;
% calculate frequency
total=zeros(1,6906);
i=1;
j=1;

total(1)=data(1,3);
     for  i=1:length(data)-1
          if   data(i,2)==data(i+1,2)
               total(j)=data(i+1,3)+total(j);
          else 
               j=j+1;total(j)=data(i,3);
          end
     end    
% set threshold
%select_total=zeros(1,1000);
n=1;
select_wordid=zeros(1,1000);
for j=1:6906
    if total(j)>450
      % select_total(j)=total(j);
       select_wordid(n)=j;
       n=n+1;
    end
end

% remove zero value in wordid
for i=1:length(select_wordid)
   if select_wordid(i)==0
      select_wordid=select_wordid(1:i-1);
      break
   end
end
% delete data below threshold
%%%%%%%%%%%%%%%%
wordid=data(:,2);
select_wordid=select_wordid';

select_data=zeros(1000,3);
p=1;
for n=1:length(select_wordid)
   for i=1:length(data)
      if data(i,2)==select_wordid(n)
         select_data(p,:)=data(i,:);
         p=p+1;
      end
   end
end
aa=cell(1,1000);
for i=1:length(select_data)
    aa(i)=word(select_data(i,2));
end
aa=aa';
