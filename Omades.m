%init

n=10;
products=5;
productnumbers=randi(n,1,products);
aromades=input("Give number: ");
elements=[];
number=zeros(1,aromades);
means=zeros(1,aromades);
stds=zeros(1,aromades);

%logic

grouplength=floor(n/aromades);
groupstart=1;
groupend=grouplength;

for i=1:aromades
    for j=1:length(productnumbers)
        if productnumbers(j)>=groupstart && productnumbers(j)<=groupend
            elements(i,end+1)=productnumbers(j);
        end
    end
    groupstart=groupend+1;
    groupend=groupend+grouplength;
end

for i=1:aromades
    number(i)=length(find(elements(i,:)~=0));
    means(i)=mean(elements(i,find(elements(i,:)~=0)));
    stds(i)=std(elements(i,find(elements(i,:)~=0)));
end

means(isnan(means))=0;
stds(isnan(stds))=0;

%results