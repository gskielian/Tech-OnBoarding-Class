from __future__ import division
from sympy import *
from sympy.plotting import plot

import matplotlib.pyplot as mpl

init_printing(use_unicode=True, wrap_line=True)
x = Symbol('x')
f = Symbol('f')


# calculate the normalized value of cosine over multiple freq

result_1 = integrate(cos(2*pi*f*x),(f,10,4000))
result_2 = integrate(cos(2*pi*f*x)*cos(2*pi*f*x),(f,10,4000))

# normalization over one period
result_3 = integrate(result_2, (x, -pi/10, pi/10))

# analogy, x/(x**2)

norm_result = result_1/result_3
 
v = []
y = []


for i in range(-100, 100):
    val = i/100000
    v.append(val)
    final_result = norm_result.evalf(maxn=50).subs(x, val)
    y.append(final_result)
print(v)
print(y)

mpl.plot(v, y)
mpl.show()
