from flask import Flask, render_template,request, redirect, url_for
from flask_sqlalchemy import SQLAlchemy
from sklearn.metrics.pairwise import cosine_similarity
import pandas as pd

app = Flask(__name__)


db = SQLAlchemy()
# SQLAlchemy設定
# app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://s2122014:UR7aNGSc@localhost:5432/mydatabase'
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://hayaten:password@localhost:5432/mydatabase'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True
db.init_app(app)

# データベースモデルの定義
class StarbucksDrinks(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    drink_name = db.Column(db.Text)
    category = db.Column(db.Integer)
    hot = db.Column(db.Boolean)
    ice = db.Column(db.Boolean)
    short = db.Column(db.Integer)
    tall = db.Column(db.Integer)
    grande = db.Column(db.Integer)
    venti = db.Column(db.Integer)
    other = db.Column(db.Integer)
    detail = db.Column(db.Text)
    sweet = db.Column(db.Integer)
    bitter = db.Column(db.Integer)
    sour = db.Column(db.Integer)
    mild = db.Column(db.Integer)
    rank = db.Column(db.Integer)
    kids = db.Column(db.Boolean)
    coffee = db.Column(db.Boolean)


@app.route('/')
def index():
    return render_template('myapp/index.html')


@app.route('/drinks')
def drinks():
    all_drinks = StarbucksDrinks.query.all()
    return render_template('myapp/drinks.html', drinks=all_drinks)

@app.route('/recommend', methods=['POST'])
def recommend():
    
    # Get user's preferences from form
    sweet_preference = int(request.form['sweet'])
    bitter_preference = int(request.form['bitter'])
    sour_preference = int(request.form['sour'])
    mild_preference = int(request.form['mild'])
    kids_preference = request.form.get('kids') == 'on'
    coffee_preference = request.form.get('coffee') == 'on'

    # Get all drinks data from database
    all_drinks = StarbucksDrinks.query.all()
    df = pd.DataFrame([{
        'sweet': drink.sweet,
        'bitter': drink.bitter,
        'sour': drink.sour,
        'mild': drink.mild,
        'kids': drink.kids,
        'coffee': drink.coffee,
    } for drink in all_drinks])

    # Calculate similarity scores
    user_vector = [[
        sweet_preference,
        bitter_preference,
        sour_preference,
        mild_preference,
        kids_preference,
        coffee_preference,
    ]]
    similarity_scores = cosine_similarity(user_vector, df[['sweet', 'bitter', 'sour', 'mild', 'kids', 'coffee']])
    df['similarity'] = similarity_scores[0]
    size = request.form['size']

    
    # Define the recommended_drinks variable based on similarity scores
    recommended_drinks = df.nsmallest(5, 'similarity').to_dict('records')

# Get top 5 recommended drinks
    recommended_drinks = df.sort_values(by='similarity', ascending=False).head(5).to_dict('records')

    # Add price based on size to each recommended drink
    # print(recommended_drinks)
    # for drink in recommended_drinks:
    #     if size == 'short':
    #         drink['price'] = drink['short']
    #     elif size == 'tall':
    #         drink['price'] = drink['tall']
    #     elif size == 'grande':
    #         drink['price'] = drink['grande']
    #     elif size == 'venti':
    #         drink['price'] = drink['venti']
    
    print(recommended_drinks)
    return render_template('myapp/recommend.html', drinks=recommended_drinks, size=size)

if __name__ == '__main__':
    with app.app_context():
        db.create_all()  # データベースのテーブルを初期化
    app.run(debug=True)