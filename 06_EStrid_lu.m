function [l,u ] = trid_lu(a)
n=length(a);
l=eye(n); u=zeros(n);
for k=1:n-1
    u(k,k+1)=a(k,k+1);
end
u(1,1)=a(1,1);
for k=1:n-1
    l(k+1,k)=a(k+1,k)/u(k,k);
    u(k+1,k+1)=a(k+1,k+1)-l(k+1,k)*u(k,k+1); 
end
norm(a-l*u)
 

