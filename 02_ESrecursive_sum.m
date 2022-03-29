function s = recursive_sum(v)
s=0;
n=length(v);
if n==1
    s = s + v;
else
    n2=fix(n/2);
    s = s + recursive_sum(v(1:n2));
    s= s+ recursive_sum(v(n2+1:n));
end


