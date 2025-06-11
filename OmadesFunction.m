function [num,means,stds]=OmadesFunction(oriaomadon,prodnumbers)

%init

oriaomadon=[0, oriaomadon, 10];
omadesnum=length(oriaomadon)-1;
means=zeros(1,omadesnum);
stds=zeros(1,omadesnum);
num=zeros(1,omadesnum);
elements=zeros(omadesnum,1);

%logic

for i=1:omadesnum
    for k=1:length(prodnumbers)
        if prodnumbers(k)>=oriaomadon(i)+1 && prodnumbers(k)<=oriaomadon(i+1)
            elements(i,end+1)=prodnumbers(k);
        end
    end
end

for i=1:omadesnum
    num(i)=length(find(elements(i,:)~=0));
    means(i)=mean(elements(i,find(elements(i,:)~=0)));
    stds(i)=std(elements(i,find(elements(i,:)~=0)));
end

means(isnan(means))=0;
stds(isnan(stds))=0;

%results

disp(elements)
disp(num)
disp(means)
disp(stds)

end