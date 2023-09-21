import numpy as np
N=100
a=5
b=20
for i in range(5):
    x=np.random.uniform(a,b,N)
    f_x=x/((1+x)**3)
    print(N, np.mean(f_x)*(b-a))
    N=N*10

