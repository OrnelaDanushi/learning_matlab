function [radice,passi] = secanti( f,x0,x1,toll,nmax)
nriter=0;
fx0=feval(f,x0);  %iniziali x0 e x1, al primo passo valuto la funzione 
fx1=feval(f,x1);  %per ogni punto.
if(fx0==0)
    radice=x0;
    return
end
if(fx1==0)
    radice=x1;
    return
end
nriter=1;  %al passo successivo, tramite i due punti iniziali, utilizzando  
x=x1-((x1-x0)/(fx1-fx0))*fx1; %la formula generatrice del metodo calcolo 
while (abs(x-x1)>=toll) && (nriter<=nmax)%la mia nuova approssimazione
x0=x1;
x1=x;
fx1=f(x1);
x=x1-((x1-x0)/(fx1-fx0))*fx1;
nriter=nriter+1;
end
radice=x;
passi=nriter;
