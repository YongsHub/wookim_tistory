import flask

app = flask.Flask (__name__)

@app.route('/')
def hello_wold():
    return 'plz press the like btn !! by wookim'
    
if __name__ == "__main__":
    app.run(host='0.0.0.0', port='5000')