from flask import Flask, jsonify
from src.controller import books_bp

app = Flask(__name__)

# Register blueprints
app.register_blueprint(books_bp)

# Define a route for the root URL
@app.route('/')
def home():
    return jsonify({'message': 'Welcome to the API!'})

# Run the application
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000, debug=True)
