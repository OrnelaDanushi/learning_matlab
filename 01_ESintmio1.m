function[app]=intmio1(a,n)
x(1)=1;
app=0;h=(a-1)/n;
for k=2:n+1
    app=(1/x(k-1))*h+app;
    x(k)=x(k-1)+h;
end
    