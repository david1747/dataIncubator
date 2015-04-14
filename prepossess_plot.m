
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
step=50;
lowth=100;
highth=500;
num_word=zeros(1,(highth-lowth)/step+1);

for m=lowth:step:highth
      for j=1:6906
            if total(j)>m
      % select_total(j)=total(j);
              select_wordid(n)=j;
                 n=n+1;   
            end
    % remove zero value in wordid
          
      end
          for i=1:length(select_wordid)
               if select_wordid(i)==0
                  select_wordid=select_wordid(1:i-1);
             
               break
               end
          end
      num_word((m-lowth)/step+1)=length(select_wordid);
    
end
number=zeros(1,60);
number(1)=num_word(1);
for i=2:length(num_word)
    number(i)=num_word(i)-num_word(i-1);
end
% remove zero in number
for i=1:length(number)
               if number(i)==0
                  number=number(1:i-1);
          
               break
               end
end
      
plot(lowth:step:highth,number)
xlabel('Words Occrance Times')
ylabel('Number of Words')


% delete data below threshold