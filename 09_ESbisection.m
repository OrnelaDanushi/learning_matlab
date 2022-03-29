function c = bisection(f,a,b, tol)

if f(a)*f(b)>0
    disp('non inclusione');
    c='non trovato';
    return
else
    err = b-a; fa=f(a);
    while err > tol
        c = (a + b)/2;
        fc=f(c);
        if fa*fc<=0
            b = c;
        else
            a = c;
            fa=fc;
        end
        err=b-a;
    end
    c = (a + b)/2;
end