function [err1,err2, err3 ] = somma(n)
s=0; t=pi^2/6;
for i=1:n
    s=s+1/(i^2);
end
err1=abs(s-t)/abs(t)
s=0;
for i=n:-1:1
    s=s+1/(i^2);
end
err2=abs(s-t)/abs(t)
v=[1:n]; v=v.*v; v=1./v; 
s=recursive_sum(v);
err3=abs(s-t)/abs(t)
