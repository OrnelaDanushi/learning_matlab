function [err] = exp_int(k,n)
x=linspace(0,1,n);
nn=linspace(0,1,k+1);
y=exp(nn);
for j=1:k+1
    p=1;
    for i=1:j-1
        p=p*(nn(j)-nn(i));
    end
    for i=j+1:k+1
        p=p*(nn(j)-nn(i));
    end
    w(j)=p;
end
for i=1:n
    s=0;
    for j=1:k+1
        s=s+y(j)/((x(i)-nn(j))*w(j));
    end
    for j=1:k+1
        s=s*(x(i)-nn(j));
    end
    ee=exp(x(i));
    err(i)=abs(ee-s)/abs(ee);
end
end

