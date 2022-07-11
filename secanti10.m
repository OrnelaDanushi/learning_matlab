function [zero,i] = secanti(f,x0,x1,toll,nmax)
g=inline(f);
i=2;
x(1)=x0;
x(2)=x1;
for i=2:nmax
    if(g(x(i)) == g(x(i-1)))
        break
    else
        x(i+1)=x(i)-g(x(i))*((x(i-1))/(g(x(i))-g(x(i-1))));
    end
    if(abs(x(i+1)-x(i))<toll)
        zero=x(i+1);
        break
    end
end
zero=x(i+1);
display (i)

end

