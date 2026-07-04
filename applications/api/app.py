from flask import Flask, jsonify
import socket

app = Flask(__name__)

@app.route("/")
def home():
    return jsonify({
        "service": "api",
        "hostname": socket.gethostname(),
        "status": "running"
    })

@app.route("/health")
def health():
    return jsonify({"status":"healthy"})

@app.route("/ready")
def ready():
    return jsonify({"status":"ready"})

@app.route("/version")
def version():
    return jsonify({"version":"v1.0.0"})

app.run(host="0.0.0.0", port=8080)
