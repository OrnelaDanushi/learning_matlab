function [lambdanew, kk] = power_trid(a,b,n,tol,itmax,y)
z=zeros(n,1); [s,i]=max(abs(y)); y=y/y(i); 
err=inf; kk=0;  lambdaold=inf; 
while(err>tol & kk<=itmax)
    z(1)=a*y(1)-b*y(2); 
    for k=2:n-1
        z(k)=a*y(k)-b*(y(k-1)+y(k+1)); 
    end
    z(n)=a*y(n)-b*y(n-1); 
    lambdanew=z(i); 
    [s,i]=max(abs(z)); 
    y=z/z(i); 
    err=abs(lambdanew-lambdaold); 
    lambdaold=lambdanew; 
    kk=kk+1; 
end
end

