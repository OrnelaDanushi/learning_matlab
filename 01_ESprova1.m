function [ y ] = prova( n )

a=1;
for k=1:n
        %versione dell'algoritmo instabile
    %y(k)=sqrt(a)-sqrt(a-1);
    %y(k)=y(k)*sqrt(a);
    
        %versione dell'algoritmo stabile
    y(k)=sqrt(a)+sqrt(a-1);
    y(k)=sqrt(a)/y(k);
    
    a=2*a;
end

