function [x, err ] = solve_trid(a,b)
[l,u]=trid_lu(a);
y=solve_lower(l,b);
x=solve_upper(u,y);
xx=a\b;
err=norm(x'-xx)/norm(x);
end

