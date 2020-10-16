#!/usr/bin/env python

from flask import Flask, json, render_template

api = Flask(__name__)

@api.route('/')
def index():
    return render_template('index.html')

if __name__ == '__main__':
    api.run(host='0.0.0.0')