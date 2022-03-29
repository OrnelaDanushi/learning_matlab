%calcolo tramite il polinomio di Taylor l'approssimazione di log(1+a)

%n=ordine
%x=parametro 
function [ x ] = polinomio_Taylor(n, x)
s=x;
ris=0; 
h=-1;
k=h;
for i=1:n
   h=h*k;
   prodotto=h*s/i; 
   ris=ris+prodotto;
   s=s*x;
end
x=ris;