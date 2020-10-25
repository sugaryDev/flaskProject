from flask import Flask, render_template, request

app = Flask(__name__)


@app.route('/')
@app.route('/index')
def index():
    return render_template('site4.html', name="Незнакомец")


if __name__ == '__main__':
    app.run()


@app.route('/', methods=['post', 'get'])
def welcome():
    if request.method == 'POST':
        name = request.form.get('name')
    return render_template('site4.html', name=name)
