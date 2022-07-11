function [x,passi]=corde(f,df,x0,toll,max)
count=0;
d=feval(df,x0);
while (count<max)&&(abs(feval(f,x0))>toll);
    count=count+1;
    x0=x0-(feval(f,x0)/d);
end
x=feval(f,x0);
passi=count;
return;
% Algoritmo metodo delle corde, 
% metodo che mi servirà per la risoluzione dell'equazione f(x)=0.
% Inanzitutto devo avere come premessa che l'equazione deve essere
% derivabile. 
% [x,passi]=corde(f,df,x0,toll,itmax)
% come valori di uscita avrò la mia radice e il numero dei passi che sono
% serviti per calcolarlo, in ingresso ho la mia funzione, definisco anche
% la sua derivata, il valore di innesco x0, toll=tolleranza per la radice e
% anche il numero delle iterazioni max