function [err] = exp_taylor(k,n)
x=linspace(0,1,n);
for i=1:n
    s=1;p=1;
for j=1:k
    p=p*x(i)/j;
    s=s+p;
end
ee=exp(x(i));
err(i)=abs(ee-s)/abs(ee);
end



end

