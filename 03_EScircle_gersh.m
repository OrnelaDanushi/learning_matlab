function [] = circle_gersh(a)
%disegna i cerchi di  Gershgorin
n=length(a); 
for k=1:n
    c=a(k,k); 
    s=0; 
    for j=1:k-1
        s=s+abs(a(k,j)); 
    end
    for j=k+1:n
        s=s+abs(a(k,j)); 
    end
    circle(c,s); 
    hold on; 
end
axis equal 
hold off
