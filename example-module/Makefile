all:
	cython -2 mycode.pyx -o mycode.c
	gcc -g -O2 -shared -o mycode.so mycode.c `python-config --includes --ldflags`
