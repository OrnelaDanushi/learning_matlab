function [x] = solve_lower(a,b)
n=length(b);
x(1)=b(1)/a(1,1);
for k=2:n
    s=0;
    for j=1:k-1
        s=s+a(k,j)*x(j);
    end
    x(k)=(b(k)-s)/a(k,k);
end

