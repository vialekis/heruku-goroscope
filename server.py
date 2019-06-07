import os
from bottle import route, run, view, redirect, static_file
from datetime import  datetime as dt
from random import random
from horoscope import generate_prophecies
@route("/")
@view("index")
def index():
    now = dt.now()
    x = random()
    predictions = generate_prophecies()
    return{
        "date":f"{now.year}-{now.month}-{now.day}",
        "predictions":predictions,
        "special_date": x > 0.5,
        "x":x
    }
@route("/favicon.ico")
def favicon():
    return static_file("favicon.ico", root='static')

@route('/css/<filename>')
def send_css(filename):
    return static_file(filename, root='static/css')

@route('/about.html')
def html():
    return static_file("about.html",root='static/html')
# return redirect("/static/html/about.html")

@route('/img/<filename>')
def img(filename):
    return static_file(filename, root='static/img')


if os.environ.get('APP_LOCATION') == 'heroku':
    run(host="0.0.0.0", port=int(os.environ.get("PORT", 5000)))
else:
    run(host='localhost', port=8080, debug=True)
