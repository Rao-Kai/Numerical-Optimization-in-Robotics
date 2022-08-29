使用armijo condition实现最速下降

相比于常规的最速下降，通常运行的迭代时间会增加，但是每次迭代所需的时间是会大大降低的

通常的梯度下降法：

$\tau  = \mathop {\arg \min }\limits_\alpha  f({x^k} + \alpha d)$
