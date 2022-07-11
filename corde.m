function [x,passi]=corde(f,df,x0,toll,nmax)%f=funzione,df=derivata di f
nriter=0;                                   %x0=punto di innesco
m=feval(df,x0);                            %toll=tolleranza per la radice
while(nriter<nmax) & (abs(feval(f,x0))>toll)%nmax=numero massimo di iterazioni
    nriter=nriter+1;                        
    x0=x0-(feval(f,x0)/m);
end
x=x0;
passi=nriter;
return;
%Il codice mi restituisce in x la radice trovata e in passi il numero di
%iterazioni necessarie per raggiungerla
%Inizializzo a 0 il numero delle iterazioni che verrà poi successivamente
%aumentato di uno passo dopo passo, e definisco m il coefficiente angolare 
%che è pari al valore della derivata sul punto iniziale. Faccio questo
%valutando la funzione (più precisamente la derivata della funzione)
%tramite la FUNCTION FEVAL