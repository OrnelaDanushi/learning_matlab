function [y] = cond1_tri(t)
% backward substitution
% n=length(b); 
% y=zeros(n,1); 
% y(n)=b(n)/t(n,n); 
% for k=n-1:-1:1
%     s=0; 
%     for j=k+1:n
%         s=s+t(k,j)*y(j); 
%     end
%     y(k)=(b(k)-s)/t(k,k);
% end
n=length(t); 
b=zeros(n,1); 
b(n)=1; 
y=zeros(n,1); 
y(n)=b(n)/t(n,n); 
for k=n-1:-1:1
    s=0; 
    for j=k+1:n
        s=s+t(k,j)*y(j); 
    end
    y1=(1-s)/t(k,k); 
    y2= (-1-s)/t(k,k); 
    if (abs(y1)>=abs(y2))
        b(k)=1; 
        y(k)=y1; 
    else
        b(k)=-1;
        y(k)=y2; 
    end
end
end

