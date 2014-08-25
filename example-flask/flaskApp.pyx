cimport flaskApp
from flask import Flask, jsonify
app = Flask ('myapp')

cpdef getBackendData():
    cdef data * resp = getData ()
    return {'name': resp.name, 'value': resp.value}

@app.route("/")
def index ():
    return jsonify (getBackendData ())

cdef public void startFlaskApp ():
    try:
        app.run ()
    except KeyboardInterrupt:
        pass
