function [y]=convolution1D(x,h)
cm=zeros(1,length(h));
pin=[0,x,0];
t=floor(length(h)/2);
y=zeros(1,length(x)-2*t);
for i=1+t:length(pin)-2*t
    cm=pin(i-t:i+t);
    y(i-t)=sum(cm.*h);
end