clear;
clc;

syms x1 x2;
f = 100*(x2-x1^2)^2+(1-x1)^2;
f = matlabFunction(f);

figure(1);
clf;
fcontour(f,[-2 2 -2 2]);
axis equal;
hold on

f_sym = sym(f);
F_td = matlabFunction(gradient(f_sym));
x0 = [-0.75;1];
eps = 1e-5;
k = 0;

f_td = F_td(x0(1),x0(2));
while norm(f_td) > eps
    d = -f_td;
    [tao_armijo] = armijo(x0,d,f,F_td);
    xnew = x0 + tao_armijo*d;
    plot([x0(1) xnew(1)],[x0(2) xnew(2)], 'ko-');
%     refresh
    x0 = xnew;
    f_td = F_td(x0(1),x0(2));
    k = k+1;
end

x = x0
result = f(x(1),x(2))
