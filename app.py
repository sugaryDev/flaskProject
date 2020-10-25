from flask import Flask, render_template, request
import os

TEMPLATE_DIR = os.path.abspath("C:/Users/posta/PycharmProjects/flaskProject/templates")
STATIC_DIR = os.path.abspath("C:/Users/posta/PycharmProjects/flaskProject/templates/static")

app = Flask(__name__, template_folder=TEMPLATE_DIR, static_folder=STATIC_DIR)
app.config['SEND_FILE_MAX_AGE_DEFAULT'] = 0


@app.route('/')
@app.route('/index')
def index():
    return render_template('site4.html')


if __name__ == '__main__':
    app.run()


@app.route('/', methods=['post', 'get'])
def welcome():
    if request.method == 'POST':
        name = request.form.get('name')
    return render_template('site4.html', name=name, )
