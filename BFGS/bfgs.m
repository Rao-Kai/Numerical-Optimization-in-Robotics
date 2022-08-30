function [Bnew] = bfgs(B,gnew,g0,xnew,x0)
A = eye(2);
deltag = gnew-g0;
deltax = xnew-x0;
Bnew = (A - deltax*deltag'/(deltag'*deltax))*B*(A - deltag*deltax'/(deltag'*deltax)) ...
        +deltax*deltax'/(deltag'*deltax);
end