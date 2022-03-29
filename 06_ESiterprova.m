function[x, kit]=iterprova(n,tol,kmax)
al=0.95;
a=zeros(n);
for i=1:n
    for j=1:n
        s=rand; 
        if(s>0.95 && i~=j)
            a(i,j)=1; 
        else
            a(i,j)=0; 
        end
    end
end
spy(a)
pause
[l,u]=lu(a);
spy(u);
pause
a=sparse(a);
d=ones(1,n)*a;
a=a*diag(1./d);
%%%%a*x=x o (I-a)*x=0
%%% meglio a=al*a+ (1-al)*e*e'/n
%%% (I-al*a)x=(1-al)*(e*e'/n)*x
%%%%(I-al*a)x=(1-al)*e/n
bb=(1-al)/n;
b=bb*ones(n,1);
x0=ones(n,1)/n;
err=inf;
kit=0;
%a=al*a;
x=zeros(n,1);
while(err>tol && kit<kmax)
    v=x0;
    for k=1:n
        x(k)=al*(a(k,:)*v) +b(k);
        v=[x(1:k);v(k+1:n)];
    end
    %x=al*(a*x0) +b;
    err=norm(x-x0,1);
    kit=kit+1;
    x0=x;
end

