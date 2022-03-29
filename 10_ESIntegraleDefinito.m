%calcolo integrale definito di 1/x nell'intervallo [1,a]
%a deve essere maggiore di 1
%n=numero di intervalli di divisione dell'area sottesa
function [ app ] = prova( a, n )

x(1)=1; %primo punto dell'integrale definito
app=0;  %l'approssimazione che voglio calcolare la inizializzo a 0
h=(a-1)/n;  %h=base dei rettangoli/trapezi dei quali ne calcoliamo l'area

            %versione con il metodo del rettangolo
%for k=2:n+1
        %valore della funzione integranda(a cui tolgo 1 per partire 
        %dal primo punto) che costituisce la base dei rettangoli, che
        %moltiplico per l'altezza +area fin'ora accumulata
    %app=(1/x(k-1))*h + app; 
        %genero ora il prossimo punto
    %x(k)=x(k-1)+h;
%end    
            %versione con il metodo dei trapezi
for k=2:n
        %genero il nuovo punto, altrimenti se lo enerassi dopo la app,
        %utilizzerei in essa un valore mai definito
    x(k)=x(k-1)+h;
        %calcolo l'area del trapezio con (BaseMaggiore+baseminore)*altezza
    app=((1/x(k-1))+(1/x(k)))*h +app;
end
    %la divisione di quello fin'ora calcolato con 2 lo eseguo fuori dal for
    %cosi invece che doverlo fare n volte lo faccio una sola, rendendo
    %l'algoritmo più efficiente
app=app/2;

