from flask import Flask

app = Flask(__name__)

@app.route('/thiio')
def thiio():
    return '<h1>Random HTTP Service!!!<h1>'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
