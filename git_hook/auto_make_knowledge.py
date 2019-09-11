#!/usr/bin/python
# coding: utf8

import time
from flask import Flask, request, render_template
from flask_socketio import SocketIO, emit
import json
from datetime import timedelta
import subprocess


app = Flask(__name__)
app.config["SEND_FILE_MAX_AGE_DEFAULT"] = timedelta(seconds=1)
app.config["threaded"] = True

#socketio = SocketIO(app)

@app.route('/', methods=['GET', 'POST'])
def hook():
    if request.method == 'POST':
        hookToken = request.headers.get('X-Hub-Signature')
        hookEvent = request.headers.get('X-GitHub-Event')
        # @todo 验证
        if hookToken == "sha1=451594aed0e1159a8f4a1dad811ca0d2a56b8f21":
            print("error token")
            return "error token"
        if hookEvent != "push":
            print("not push hook")
            return "error"
        data = request.get_data()
        json_data = json.loads(data.decode("utf-8"))
        branch = json_data["ref"].split("/")[-1]
        print(branch)

        subprocess.Popen("git pull origin master &> /tmp/abc.log &", cwd="/var/www/knowledge", shell=True, stdout=subprocess.PIPE).communicate()
        subprocess.Popen("make &> /tmp/abc.log &", cwd="/var/www/knowledge", shell=True, stdout=subprocess.PIPE).communicate()

        return "ok"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=7777, threaded=True)
    # app.run(host='0.0.0.0', port=8080, threaded=False)
    # socketio.run(app, host='0.0.0.0', port=7777)





