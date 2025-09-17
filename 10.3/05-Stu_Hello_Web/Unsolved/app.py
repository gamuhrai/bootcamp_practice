from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
    return "Hello, y'all!"

@app.route("/about")
def about():
    name = "Dave"
    location = "Vauxhall"

    return f"My name is {name}, and I live in {location}."

@app.route("/contact")
def contact():
    email = "dagdag@dag.com"

    return f"Question? Comments? Concerns? I can be reached at {email}."

if __name__ == "__main__":
    app.run(debug=True)
