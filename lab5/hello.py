from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return '''
    <p>Welcome! This is another string!</p>
    <p>Go to the <a href="/about">About Page</a>.</p>
    <p>Go to the <a href="/contact">Contact Page</a>.</p>
    '''
    
@app.route('/about')
def about():
    return '''
    <p>This is the About Page.</p>
    <p>Go back to the <a href="/">Home Page</a>.</p>
    '''

@app.route('/contact')
def contact():
    return '''
    <p>This is the Contact Page.</p>
    <p>Contact me at: c23399501@mytudublin.ie</p>
    <p>Go back to the <a href="/">Home Page</a>.</p>
    '''
    
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)