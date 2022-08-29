使用armijo condition实现最速下降

相比于常规的最速下降，通常运行的迭代时间会增加，但是每次迭代所需的时间是会大大降低的

通常的梯度下降法中，步长更新算法为：

$\tau  = \mathop {\arg \min }\limits_\alpha  f({x^k} + \alpha d)$

使用armijo condition的最速梯度下降法，步长更新算法为：

$\tau  \in \lvert\{ {\alpha |f({x^k}) - f({x^k} + \alpha d) \ge  - c \cdot \alpha {d^T}\nabla f({x^k})} \right\}$
