from flask import Flask

app = Flask(__name__)

@app.route('/')
def display_message():
    return "Salah is better than Hazard"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5002)