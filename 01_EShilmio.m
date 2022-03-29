function[eigvt,eigv]=hilmio(n)
a=zeros(n);
for i=1:n
    for j=1:n
        a(i,j)=1/(i+j-1);
    end
end
%norm(a-a')
[eigvt, eigv]=eig(a);
% x=ones(n,1);
% b=a*x;
% z=a\b;
% % norm(z-x)
% % pause
% % norm(a*z-b)
% % pause
% % w=inv(a)*b;
% % pause
% % norm(w-x)
% % pause
% % norm(a*w-b)
% cc=cond(a);