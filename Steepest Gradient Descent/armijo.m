function [tao_armijo] = armijo(x0,d,f,F_td)
tao = 1; %初始值设为1
c = 0.4;
sigma = 0.5;
j = 1;
while(j>0)
    x_new = x0 + tao.*d;
    if f(x_new(1),x_new(2)) <= f(x0(1),x0(2)) + c*tao.*F_td(x0(1),x0(2))'*d
        j = 0;
        tao_armijo = tao;
    else
        tao = sigma*tao;
    end
end

