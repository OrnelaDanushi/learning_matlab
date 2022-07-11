function [x,passi]=aitken(f,df,x0,toll,nmax)
f0=feval(f,x0);
m=feval(df,x0);
x1=x0-(f0/m);
f1=feval(f,x1); 
m=feval(df,x1);
x2=x1-(f1/m);
f2=feval(f,x2);
 
nriter=0;
 
while (nriter<nmax) & abs(f2)>abs(toll*m)
   nriter=nriter+1;
   x0=(x0*x2-x1*x1)/(x2-2*x1+x0);
   f0=feval(f,x0);
   m=feval(df,x0);
   x1=x0-(f0/m);
   f1=feval(f,x1);
   m=feval(df,x1);
   x2=x1-(f1/m);
   f2=feval(f,x2);
end
x=x2;
passi=nriter+2;
return;