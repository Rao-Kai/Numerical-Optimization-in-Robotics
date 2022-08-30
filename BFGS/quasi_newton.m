clear;
clc;

syms x1 x2;
f = (1-x1)^2+(x2-x1^2)^2;
f = matlabFunction(f);

figure(1);
clf;
fcontour(f,[-1 1.5 -1 1.5]);
axis equal;
hold on

f_sym = sym(f);
F_td = matlabFunction(gradient(f_sym));
x0 = [-0.75;-0.5];
eps = 1e-5;
k = 0;

B = eye(2);
g0 = F_td(x0(1),x0(2));
while norm(g0) > eps
    d = -B*g0;
    [tao_wolfe] = weak_wolfe(x0,d,f,F_td);
    xnew = x0 + tao_wolfe*d;
    gnew = F_td(xnew(1),xnew(2));
    [Bnew] = bfgs(B,gnew,g0,xnew,x0);
    plot([x0(1) xnew(1)],[x0(2) xnew(2)], 'ko-');
    refresh
    B = Bnew;
    x0 = xnew;
    g0 = F_td(x0(1),x0(2));
    k = k+1;
end
x = x0
result = f(x(1),x(2))