function [x] = solve_tridiag(a,b)
%risolve il sistema tridiagonale ax=b
% con il metodo di eliminazione gaussiana
n=length(b); 
x=zeros(n,1); 
for k=1:n-1
    m=a(k+1,k)/a(k,k); 
    a(k+1,k)=0; 
    a(k+1,k+1)=a(k+1,k+1)-m*a(k,k+1); 
    b(k+1)=b(k+1)-m*b(k); 
end
x(n)=b(n)/a(n,n); 
for j=n-1:-1:1
x(j)=(b(j)-a(j,j+1)*x(j+1))/a(j,j); 
end
end

