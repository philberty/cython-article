cdef extern from "data.h":
    struct data:
        char name[10]
        int value
    data * getData ()

cpdef getBackendData():
    cdef data * resp = getData ()
    return {'name': resp.name, 'value': resp.value}

from flask import Flask, jsonify
app = Flask ('myapp')

@app.route("/")
def index ():
    return jsonify (getBackendData ())

cdef public void startFlaskApp ():
    app.run ()
