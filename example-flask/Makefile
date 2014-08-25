all:
	cython -2 flaskApp.pyx -o flaskApp.c
	gcc -g -O2 -o example main.c flaskApp.c `python-config --ldflags --includes`
