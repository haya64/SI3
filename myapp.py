from flask import Flask, render_template, request, jsonify, url_for, redirect
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

@app.route('/home')
def home():
    return render_template('myapp/home.html')

@app.route('/recommend')
def recommend():
    return render_template('myapp/recommend.html')

@app.route('/upload', methods=['POST'])
def upload_image():
    data = request.json
    image_data = data['image']

    if image_data is not None:
        print('画像受け取ったよ')

    # 画像データの処理
    # 例: Base64データから画像ファイルを生成、感情分析など

    # 処理結果を返す
    return jsonify({'message': 'Image received successfully!'})

@app.route('/preferences')
def preferences():
    return render_template('myapp/preferences.html')

@app.route('/process_preferences', methods=['POST'])
def process_preferences():
    # フォームから嗜好データを取得
    sweet_preference = request.form.get('sweet')
    # 他の嗜好データを取得

    # 嗜好に基づいた推薦処理を実行

    return redirect(url_for('recommendation_results'))

@app.route('/recommendation_results')
def recommendation_results():
    # ここで推薦処理の結果を取得する（例: データベースから取得または計算する）
    recommended_drinks = [
        {'drink_name': 'Caramel Macchiato', 'sweet': 8},
        # 他の推薦ドリンクを追加
    ]
    
    return render_template('myapp/recommendation_results.html', recommended_drinks=recommended_drinks)




@app.route('/drinks')
def drinks():
    all_drinks = StarbucksDrinks.query.all()
    return render_template('myapp/drinks.html', drinks=all_drinks)

@app.route('/recommend', methods=['POST'])
def rrecommend():
    
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