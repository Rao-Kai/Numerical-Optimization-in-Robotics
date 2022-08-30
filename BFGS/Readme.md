### weak_wolfe condition:

$f({x^k}) - f({x^k} + \alpha d) \ge  - c_1 \cdot \alpha {d^T}\nabla f({x^k})$

${d^T}\nabla f({x^k + \alpha d}) \ge c_2 \cdot {d^T}\nabla f({x^k})$  

### strong_wolfe condition:

$f({x^k}) - f({x^k} + \alpha d) \ge  - c_1 \cdot \alpha {d^T}\nabla f({x^k})$

$\lvert {d^T}\nabla f({x^k + \alpha d}) \rvert \le \lvert c_2 \cdot {d^T}\nabla f({x^k})  \rvert$

### BFGS更新准则

$B^{k+1}=\left(I-\frac{\Delta x \Delta g^T}{\Delta g^T \Delta x}\right) B^k\left(I-\frac{\Delta g \Delta x^T}{\Delta g^T \Delta x}\right)+\frac{\Delta x \Delta x^T}{\Delta g^T \Delta x}$

$B^0=I, \Delta x=x^{k+1}-x^k, \Delta g=\nabla f\left(x^{k+1}\right)-\nabla f\left(x^k\right)$

### Cautious-BFGS

$if$

${ {\rm{ }}\Delta {g^T}\Delta x > \varepsilon \left\| {{g_k}} \right\|\Delta {x^T}\Delta x,\varepsilon  = {{10}^{ - 6}}}$

$then,$

$B^{k+1}= {\left( {I - \frac{{\Delta x\Delta {g^T}}}{{\Delta {g^T}\Delta x}}} \right){B^k}\left( {I - \frac{{\Delta g\Delta {x^T}}}{{\Delta {g^T}\Delta x}}} \right) + \frac{{\Delta x\Delta {x^T}}}{{\Delta {g^T}\Delta x}}}$

$else$

$B^{k+1}=B^{k}$
