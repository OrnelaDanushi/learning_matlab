function [x,it] = newton(x0,tol,itmax)
f=@(x)x*log(x)-1;
f1=@(x)log(x)+1;
it=0;
err=inf;
while(err>tol && it<itmax)
    x=x0-f(x0)/f1(x0);
    err=abs(x0-x);
    x0=x
    pause
    it=it+1;
end    


end


