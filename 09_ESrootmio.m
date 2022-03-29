function [ app] = rootmio( tol, itermax)
f=@(x)x-cos(x); g=@(x)1+sin(x);
%%%bisection method%%%%
a=0; b=pi/4; f0=f(a); f1=f(b); it=0;
while(b-a>tol && it<itermax)
    c=(a+b)/2;
    ff=f(c);
    if(f0*ff<=0)
        b=c; f1=ff;
    else
        a=c; f0=ff;
    end
it=it+1;
end
app=(a+b)/2;
it
pause
%%%%%%%%%%%%
%%%iterative functional method%%%%
x0=pi/4; err=inf; it=0;
while(err>tol && it<itermax)
    x1=cos(x0);
    err=abs(x1-x0);
    it=it+1;
    x0=x1;
end
app=x0;
it
pause
%%%%%%%%%%%%%%%%
%%%%%Newton method
x0=pi/4; err=inf; it=0;
err=abs(x0-app);
while(err>tol && it<itermax)
    x1=x0-f(x0)/g(x0);
    err=abs(x1-app)
    it=it+1;
    x0=x1;
end
app=x0;
it
pause
    