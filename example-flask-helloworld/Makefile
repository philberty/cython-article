all:
	cython -2 --embed app.pyx -o app.c
	gcc -g -O2 -o app app.c `python-config --includes --ldflags`
