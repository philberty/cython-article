all:
	cython -2 --embed fib2.pyx -o fib2.c
	gcc -g -O2 -o fib2 fib2.c `python-config --includes --ldflags`
