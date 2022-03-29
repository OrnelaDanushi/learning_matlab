function [err] = solve_bidiag(a,b, n)
xtrue=rand(n,1); 
for k=1:n-1
    c(k)=a*xtrue(k)+b*xtrue(k+1); 
end
c(n)=a*xtrue(n); 
x=zeros(n,1);
x(n)=c(n)/a; 
for k=n-1:-1:1
    x(k)=(c(k)-b*x(k+1))/a; 
end
err=max(abs(x-xtrue))
end

