from flask import Flask

app = Flask(__name__)


@app.route('/')
def hello():
    return 'Hello, Flask!'

@app.route('/howareyou')
def howareyou():
    return 'I am fine, thank you!'

if __name__ == '__main__':
    # Useful for local manual runs: python app.py
    app.run(host='127.0.0.1', port=5000, debug=True)
