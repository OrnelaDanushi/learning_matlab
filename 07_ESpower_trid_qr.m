function [lambdanew, kk] = power_trid_qr(a,b,n,tol,itmax,y )
 y=y/norm(y); z=zeros(n,1); 
err=inf; kk=0;  lambdaold=inf; 
while(err>tol & kk<=itmax)
    z(1)=a*y(1)-b*y(2); 
    for k=2:n-1
        z(k)=a*y(k)-b*(y(k-1)+y(k+1)); 
    end
    z(n)=a*y(n)-b*y(n-1); 
    lambdanew=y'*z; 
%    err=abs(lambdanew-lambdaold); 
    err=norm(z-lambdanew*y); 
    y=z/norm(z); 
    lambdaold=lambdanew; 
    kk=kk+1; 
end
end

