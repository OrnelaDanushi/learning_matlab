function [x] = solve_tridiag_p(a,b)
%risolve il sistema tridiagonale ax=b
% con il metodo di eliminazione gaussiana
n=length(b); 
x=zeros(n,1); 
for k=1:n-1
    if(abs(a(k,k))<abs(a(k+1,k)))
        s=a(k,:); 
        a(k,:)=a(k+1, :); 
        a(k+1, :)=s; 
        s=b(k);
        b(k)=b(k+1); 
        b(k+1)=s; 
    end
    m=a(k+1,k)/a(k,k); 
    a(k+1,k)=0; 
    a(k+1,k+1)=a(k+1,k+1)-m*a(k,k+1); 
    if(k<n-1)
    a(k+1, k+2)=a(k+1,k+2)-m*a(k,k+2);
    end
    b(k+1)=b(k+1)-m*b(k); 
end
x(n)=b(n)/a(n,n); 
x(n-1)=(b(n-1)-a(n-1,n)*x(n))/a(n-1,n-1); 
for j=n-2:-1:1
x(j)=(b(j)-a(j,j+1)*x(j+1)-a(j, j+2)*x(j+2))/a(j,j); 
end
end

