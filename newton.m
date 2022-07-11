function [x,passi]=newton(f,df,x0,toll,nmax)
nriter=0;
f0=feval(f,x0);
m=feval(df,x0);
 
while(nriter< nmax) & (abs(f0)>abs(toll*m))
    nriter=nriter+1;
    m=feval(df,x0);
    x0=x0-(f0/m);
    f0=feval(f,x0);
end
x=x0;
passi=nriter;
end

