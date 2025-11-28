from flask import Flask
import os

app = Flask(__name__)

NAME = os.environ.get('NAME', 'Arun')
HOST = os.environ.get('HOST', '0.0.0.0')


@app.route('/')
def hello():
    return f'Hello \"{NAME}\" from {HOST}!'

@app.route('/howareyou')
def howareyou():
    return 'I am fine, thank you!'

if __name__ == '__main__':
    app.run(host=HOST, port=5000, debug=True)
