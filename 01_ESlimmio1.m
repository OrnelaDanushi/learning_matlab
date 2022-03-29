function[y]=limmio2(n)
a=1;
for k=1:n
    y(k)=sqrt(a)+sqrt(a-1);
    y(k)=sqrt(a)/y(k);
    a=2*a;
end
    