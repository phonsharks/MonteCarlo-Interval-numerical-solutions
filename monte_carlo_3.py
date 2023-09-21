import numpy as np
N=10000000
a=5
b=20
x=np.random.uniform(a,b,N)
f_x=x/((1+x)**3)
print(np.mean(f_x)*(b-a))

