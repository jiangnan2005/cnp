from flask import Flask
import redis

app = Flask(__name__)
r = redis.Redis(host='redis-service', port=6379)

@app.route("/")
def home():
    return "Hello Kubernetes!"

@app.route("/counter")
def counter():
    count = r.incr("hits")
    return f"Visits: {count}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
