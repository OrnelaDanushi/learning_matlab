function [x,s] = secanti(f,x0,x1,tolx,tolf,nmax)
x(1)=x0;
x(2)=x1;
fxn0=feval(f,x0);
fxn1=feval(f,x1);
for n=2:nmax-1
    x(n+1)=x(n)-fxn1*(x(n)-x(n-1))/(fxn1-fxn0);
    fxn0=fxn1;
    fxn1=feval(f,x(n+1));
    if(abs(x(n+1)-x(n))<tolx)|(abs(fxn1)<tolf)
        break;
    end
end
s=x(n+1);
end
%qui tra le variabili di ingresso, oltre a nmax e tolx ho anche tolf
%che mi rappresenta la tolleranza per la funzione
%il ciclo for lo faccio partire da 2 perchè nei primi due passi valuto la
%funzione in x0 e x1.
%Utilizzo poi la formula generatrice del metodo, calcolandomi così la mia
%approssimazione.
%s mi rappresenta la soluzione esatta mentre x=i passi necessari per
%arrivare alla radice.