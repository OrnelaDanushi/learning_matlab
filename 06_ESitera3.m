function [xnew,k] = itera3(x, b, tol, itmax)
n=length(b);
k=0;
err=inf;
xold=zeros(n,1); xnew=zeros(n,1);
while(err>tol & k<=itmax)
xnew(1)=b(1)-x'*xold(2:n);
for j=2:n
    xnew(j)=b(j)-x(j-1)*xold(1);
end
err=norm(xnew-xold,'inf');
k=k+1;
xold=xnew;
end








end

