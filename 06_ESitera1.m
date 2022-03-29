function [xnew,k] = itera1(a, b, tol, itmax)
n=length(b);
d=a^2+1;
k=0;
err=inf;
xold=zeros(n,1); xnew=zeros(n,1);
while(err>tol & k<=itmax)
xnew(1)=(a*xold(2)+b(1))/d;
for j=2:n-1
    xnew(j)=(b(j)+a*(xold(j-1)+xold(j+1)))/d;
end
xnew(n)=(b(n)+a*xold(n-1))/d;
err=norm(xnew-xold,'inf');
k=k+1;
xold=xnew;
end








end

