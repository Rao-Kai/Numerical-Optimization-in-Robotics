function [tao_wolfe] = weak_wolfe(x0,d,f,F_td)
tao = 1; %初始值设为1
c1 = 1e-4;
c2 = 0.9;
sigma = 0.5;
j = 1;
while(j>0)
    x_new = x0 + tao.*d;
    if f(x_new(1),x_new(2)) <= f(x0(1),x0(2)) + c1*tao.*F_td(x0(1),x0(2))'*d ...
            && d'*F_td(x_new(1),x_new(2)) >= c2.*d'*F_td(x0(1),x0(2))
        j = 0;
        tao_wolfe = tao;
    else
        tao = sigma*tao;
    end
end