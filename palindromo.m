%init

dna_sequences=randi(4,8,50);
numberofpalindromes=zeros(1,size(dna_sequences,1));
currentvector=zeros(1,4);

%logic

for i=1:size(dna_sequences,1)
    for j=1:size(dna_sequences,2)-3
        currentvector=dna_sequences(i,j:j+3);
        if currentvector==fliplr(currentvector)
            numberofpalindromes(i)=numberofpalindromes(i)+1;
        end
    end
end

%results

for i=1:length(numberofpalindromes)
    if numberofpalindromes(i)>3
        disp(dna_sequences(i,:))
    end
end