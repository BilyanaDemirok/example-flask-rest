# Based on: https://www.geeksforgeeks.org/python-build-a-rest-api-using-flask/
from flask import Flask, jsonify, request

app = Flask(__name__)


@app.route('/', methods=['GET', 'POST'])
def home():
    if request.method == 'GET':
        data = "This is an example rest api."
        return jsonify({'info': data})
    if request.method == 'POST':
        return jsonify({'request_body': request.data.decode()})


@app.route('/square/<int:num>', methods=['GET'])
def square(num):
    return jsonify({'data': num ** 2})


@app.route('/greeting/<string:name>', methods=['GET'])
def greeting(name):
    return jsonify({'data': f'hello {name}!'})


if __name__ == '__main__':
    app.run(debug=True, port=5000)
