function [x] = solve_upper(a,b)
n=length(b);
x(n)=b(n)/a(n,n);
for k=n-1:-1:1
    s=0;
    for j=k+1:n
        s=s+a(k,j)*x(j);
    end
    x(k)=(b(k)-s)/a(k,k);
end

