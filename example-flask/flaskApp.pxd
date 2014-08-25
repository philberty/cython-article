cdef extern from "data.h":
    struct data:
        char name[10]
        int value
    data * getData ()

