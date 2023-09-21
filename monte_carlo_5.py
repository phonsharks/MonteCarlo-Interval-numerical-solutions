import numpy as numpy
N = 100000
accum = 0 
for i in range(N):
    x = numpy.random.uniform(2, 3)
    accum += x**2 + 4*x*numpy.sin(x)
measure = 3 - 2
print(measure * accum/float(N))
