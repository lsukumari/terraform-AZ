from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "<h1>Hello World from Python Flask App Service!</h1>"

@app.route("/health")
def health():
    return {"status": "healthy"}, 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)
