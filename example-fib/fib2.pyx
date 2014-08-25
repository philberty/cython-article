cdef fib(int n):
    if n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        return fib(n-1) + fib(n-2)

result = []
for i in range (30):
    result.append(('fib(%i)' % i, fib(i)))
print result