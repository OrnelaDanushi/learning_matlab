function [] = circle(a,r)
%disegna la circonferenza di centro a  e raggio r
n=1000; 
x=zeros(n,1); 
y=zeros(n,1); 
for k=1:n
    th=2*pi*k/n; 
    x(k)=real(a)+ r*cos(th); 
    y(k)=imag(a)+ r*sin(th); 
end
%plot(x,y)
patch(x,y, 'red')
end

