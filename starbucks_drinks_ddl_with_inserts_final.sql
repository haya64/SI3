
CREATE TABLE starbucks_drinks (
    id SERIAL PRIMARY KEY,
    drink_name TEXT,
    category INTEGER,
    hot BOOLEAN,
    ice BOOLEAN,
    short INTEGER,
    tall INTEGER,
    grande INTEGER,
    venti INTEGER,
    other INTEGER,
    detail TEXT,
    sweet INTEGER,
    bitter INTEGER,
    sour INTEGER,
    mild INTEGER,
    rank INTEGER,
    kids BOOLEAN,
    coffee BOOLEAN
);

INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('ドリップコーヒー', 1, TRUE, TRUE, 350, 390, 435, 480, 9999, '厳選された香り高いドリップコーヒー

世界中のコーヒー産地から厳選された高品質のアラビカ種コーヒー豆を使用したスターバックスの定番商品です。バラエティあふれるコーヒー豆を通して、スターバックスのコーヒージャーニーをお楽しみください。
異なるローストレベルのコーヒーを日替わりでご用意していますので、お気に入りの1杯を見つけてみませんか。ディカフェ（カフェインレス）のコーヒーもご用意しています。

One More Coffeeのご案内
～スターバックスのコーヒーの世界を1日お楽しみください～
ドリップコーヒー（カフェミストを含む）ご購入時のレシートを当日の営業終了までに持参すると、2杯目のドリップコーヒーを162円/165円(持ち帰り価格/店内価格)またはカフェミストを216円/220円(持ち帰り価格/店内価格)でお楽しみいただけるサービスです。
なお、1杯目のお会計をWeb登録済みのスターバックス カードでお支払いいただくと、2杯目のドリップコーヒーは108円/110円(持ち帰り価格/店内価格)、カフェミストは162円/165円(持ち帰り価格/店内価格)でお楽しみいただけます。', 1, 10, 7, 4, 5, FALSE, TRUE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('カフェミスト', 1, TRUE, FALSE, 405, 445, 490, 535, 9999, '香り高いドリップコーヒーにふわふわのスチームミルクを加えて

高品質のアラビカ種コーヒー豆を使用したドリップ コーヒーにスチームしたミルクを注ぎ、さらにふわふわのフォームミルクをのせました。やさしくホッとできるビバレッジです。ディカフェ（カフェインレス）のコーヒーもご用意しています。

One More Coffeeのご案内
～スターバックスのコーヒーの世界を1日お楽しみください～
ドリップコーヒー（カフェミストを含む）ご購入時のレシートを当日の営業終了までに持参すると、2杯目のドリップコーヒーを162円/165円(持ち帰り価格/店内価格)またはカフェミストを216円/220円(持ち帰り価格/店内価格)でお楽しみいただけるサービスです。
なお、1杯目のお会計をWeb登録済みのスターバックス カードでお支払いいただくと、2杯目のドリップコーヒーは108円/110円(持ち帰り価格/店内価格)、カフェミストは162円/165円(持ち帰り価格/店内価格)でお楽しみいただけます。※価格は全て税込価格', 3, 8, 3, 7, 3, FALSE, TRUE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('コールドブリューコーヒー', 1, FALSE, TRUE, 400, 440, 485, 530, 9999, 'まろやかな味わいが楽しめるコールドブリュー コーヒー

熱を加えずに14時間かけてゆっくりと水で抽出したコールドブリュー コーヒー。香り高い風味が引き出されるよう、特別にブレンド、ローストしたコーヒー豆を使用しています。
豊かな味わいとなめらかな口あたりをお楽しみください。', 1, 10, 7, 2, 2, FALSE, TRUE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('コーヒープレス', 1, TRUE, TRUE, 9999, 9999, 9999, 9999, 490, 'お好きなコーヒー豆をコーヒープレスでお楽しみいただけます

店舗でお取り扱いしている全コーヒー豆の中から、その日の気分に応じて、お好きなコーヒー豆をお選びいただけます。コーヒー豆の種類により、価格が異なる場合があります。', 1, 8, 7, 4, 1, FALSE, TRUE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('ポットサービス', 1, TRUE, TRUE, 9999, 9999, 9999, 9999, 2600, 'スターバックスのコーヒーをポットでご用意します

ミーティングに、来客時に、抽出したてのドリップコーヒーをポットでご用意いたします。
あわせて、ペーパーカップ、ポーションミルク、シュガーもご用意いたします。事前にお知らせいただくと、お好きなコーヒー豆を選べます。', 1, 8, 7, 4, 1, FALSE, TRUE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('スターバックス コーヒートラベラー', 1, TRUE, TRUE, 9999, 9999, 9999, 9999, 3100, 'いれたてのドリップコーヒー約12杯分（ショートサイズ換算）を持ち帰り専用の新タイプ容器（返却不要）に入れてご用意します。ビジネスからアウトドアまで、いろいろなシーンでスターバックスのコーヒーをお楽しみいただけます。

[付属品]
・ホットの場合
ペーパーカップ、ポーションミルク、シュガー、マドラー、紙ナプキン
・アイスの場合
コールドカップ、ポーションミルク、ポーションシロップ、ストロー、紙ナプキン、氷※、手袋

■店頭または電話でご注文の場合
事前にお知らせいただくと、お好きなコーヒー豆を選べます。詳細はご注文の際に、バリスタとご相談ください。
お支払いは商品受け取りの際にお願いいたします。

■Mobile Order & Pay、Uber Eatsでご注文の場合
コーヒー豆はお選びいただけません。
一部店舗では、お取扱いのない場合がございます。

商品の受け渡しに関する詳細はご注文店舗までお問合せください。', 1, 8, 7, 4, 1, FALSE, TRUE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('スターバックス ラテ', 2, TRUE, TRUE, 449, 490, 535, 580, 9999, 'エスプレッソとミルクが互いを引き立て合う、定番のエスプレッソビバレッジ

リッチな風味のエスプレッソにミルクを注いだラテ。
エスプレッソとの相性を追求したミルクにより、コーヒーの余韻をお楽しみいただけます。
ミルクのほっとする甘さやエスプレッソの豊かなアロマと一緒に、ゆっくりとした時間をお過ごしください。', 5, 5, 2, 5, 5, FALSE, TRUE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('ソイ ラテ', 2, TRUE, TRUE, 449, 490, 535, 580, 9999, 'エスプレッソとの相性を追求した豆乳を使用

リッチな味わいのエスプレッソに豆乳*を合わせたビバレッジ。エスプレッソと豆乳*のバランスが絶妙で、やさしい味わいをお楽しみいただけます。', 4, 5, 2, 2, 3, FALSE, TRUE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('アーモンドミルク ラテ', 2, TRUE, TRUE, 449, 490, 535, 580, 9999, 'エスプレッソにアーモンドミルクを合わせたラテ

エスプレッソにスターバックスオリジナルのアーモンドミルク*を注いだビバレッジ。エスプレッソのロースト感とアーモンドミルク*の香ばしさが織りなす味わいを、お楽しみいただけます。', 4, 5, 2, 4, 3, FALSE, TRUE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('オーツミルク ラテ', 2, TRUE, TRUE, 449, 490, 535, 580, 9999, 'エスプレッソにオーツミルクを合わせたラテ

オーツ麦から生まれたオーツミルク*をエスプレッソと合わせたビバレッジ。穀物由来の優しい甘みとエスプレッソの相性の良さをお楽しみいただけます。', 4, 5, 2, 3, 3, FALSE, TRUE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('カプチーノ', 2, TRUE, TRUE, 449, 490, 535, 580, 9999, 'ふんわりと滑らかな舌触りのフォームミルクをたっぷり楽しめるカプチーノ

リッチな風味のエスプレッソに一気にミルクを注ぐことで、一口飲んだときからコーヒー感を味わえるビバレッジです。ベルベットのようにきめ細かいフォームミルクをお楽しみください。', 6, 3, 1, 6, 2, FALSE, TRUE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('カフェ モカ', 2, TRUE, TRUE, 490, 530, 575, 620, 9999, 'エスプレッソにチョコレートシロップとミルク、ホイップクリームをのせて

エスプレッソにほろ苦いチョコレートシロップとミルクを加え、ホットビバレッジにはホイップクリームをトッピング。ちょっとした贅沢を楽しみたい方におすすめです。
アイスでのご提供の場合、ホイップクリームは付きません。', 8, 6, 1, 8, 3, FALSE, TRUE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('ホワイト モカ', 2, TRUE, TRUE, 490, 530, 575, 620, 9999, 'エスプレッソにホワイトモカシロップとミルク、ホイップクリーム

エスプレッソに濃厚でクリーミーな味わいのホワイトモカシロップとスチームミルクを加え、ホイップクリームをトッピング。コーヒーとホワイトチョコレート風味が織りなすやわらかなハーモニーと共に、ちょっと贅沢なひと時をゆっくりとお過ごしください。', 9, 6, 1, 8, 4, FALSE, TRUE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('キャラメル マキアート', 2, TRUE, TRUE, 490, 530, 575, 620, 9999, 'バニラ風味のラテにキャラメルソースをトッピング

バニラシロップとスチームミルクのコンビネーションになめらかなフォームミルクをのせ（ホットのみ）、その上からエスプレッソを注いでアクセントを付けました。仕上げにキャラメルソースをトッピングしています。', 7, 4, 1, 3, 4, FALSE, TRUE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('カフェ アメリカーノ', 2, TRUE, TRUE, 405, 445, 409, 535, 9999, 'エスプレッソに特別にろ過したウォーターを加えて

エスプレッソに熱いお湯を注いだ、すっきりとしたのどごしのコーヒーです。ドリップ コーヒーのお好きな方にもおすすめです。', 3, 6, 2, 4, 3, FALSE, TRUE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('エスプレッソ', 2, TRUE, FALSE, 385, 425, 9999, 9999, 9999, 'スターバックスこだわりのエスプレッソ

キャラメルのような甘く力強い味とナッツを感じさせる後味。
スターバックスのすべてのエスプレッソ ビバレッジに使われているエスプレッソです。
どうぞ、お早めにお召し上がりください。', 1, 10, 1, 2, 1, FALSE, TRUE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('スターバックス ブロンド ラテ with オーツミルク', 2, TRUE, TRUE, 449, 490, 535, 580, 9999, 'ブロンド エスプレッソ ローストにオーツミルクを合わせた、なめらかな口あたりのラテ

オーツミルクがブロンド エスプレッソ ローストの香ばしさと、ほんのりやさしい甘さを引き出します。', 6, 2, 1, 6, 3, FALSE, TRUE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('トリプルエスプレッソ ラテ', 2, TRUE, TRUE, 9999, 545, 9999, 9999, 9999, 'ほのかな甘みが引き立てる、エスプレッソの持つ風味と力強さを味わえるラテ

エスプレッソの風味と力強さを最も引き出せるように、コーヒー、ミルク、シロップの究極のバランスを追求したラテ。甘みをつけるのではなく、エスプレッソの輪郭をくっきりと際立たせるために、少量のクラシックシロップを加えています。
スターバックス ラテより2ショット多い、3ショットのエスプレッソを使っているので、普段エスプレッソショットを追加されるお客様には、特におすすめです。', 3, 7, 1, 3, 3, FALSE, TRUE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('チョコレート ムース ラテ', 2, TRUE, TRUE, 9999, 590, 9999, 9999, 9999, 'ふわふわのチョコレートムースをのせた、まろやかなブロンド エスプレッソのラテ

軽やかな風味の「ブロンド エスプレッソ ロースト」をエスプレッソ抽出し、アーモンドとヘーゼルナッツのソースを合わせ、ふわふわのチョコレートムースをのせました。まろやかで甘みが引き立つエスプレッソと、香ばしいアーモンドとヘーゼルナッツの風味が相性抜群です。さらに、チョコレートムースをのせることで、ふんわり優しい口あたりに。秋のはじまりに、ふわふわのラテでほっとひと息ついてみませんか。

※既に販売終了している店舗がございます。', 8, 2, 1, 6, 5, FALSE, TRUE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('Booooo フラペチーノ', 3, FALSE, TRUE, 9999, 690, 9999, 9999, 9999, 'ハロウィン気分を高めてくれる、真っ黒なソースで覆われたフラペチーノ®

一口飲むとその見た目とは裏腹に、パンプキンの優しい風味とキャラメルの甘みが広がります。カップの底に隠すように忍ばせたパンプキンプリンの食感も楽しい、デザート感たっぷりな一杯で、今年のハロウィンを楽しみませんか。', 8, 1, 1, 8, 5, TRUE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('エスプレッソ アフォガート フラペチーノ', 3, FALSE, TRUE, 590, 630, 675, 720, 9999, '甘すぎずほろ苦い、大人のためのフラペチーノ®

ひと口目に感じるエスプレッソは「リストレット」という方法で抽出した力強い香りと優しい苦味を、ふた口目は全体を混ぜて、こだわりのクリームから来るアフォガートのような味わいをお楽しみください。
リフレッシュしたい時や、ほっとひと息つきたい時にも、何度でも飲みたくなるフラペチーノ®です', 8, 8, 1, 5, 3, FALSE, TRUE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('コーヒーフラペチーノ', 3, FALSE, TRUE, 475, 515, 561, 605, 9999, 'コーヒーのおいしさをシンプルに味わうフラペチーノ®

コーヒー、ミルクを氷とブレンドした、シンプルながらもコーヒーのおいしさを楽しめるフラペチーノ®です。そのまま味わうのはもちろん、シロップなどをカスタマイズして、自分好みのコーヒー フラペチーノ®に仕上げるのもおすすめです。', 7, 2, 1, 3, 2, FALSE, TRUE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('ダーク モカ チップ フラペチーノ', 3, FALSE, TRUE, 550, 590, 635, 680, 9999, 'ダークチョコレートのほろ苦さが引き立つコーヒーベースのフラペチーノ®', 7, 2, 1, 4, 4, TRUE, TRUE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('キャラメル フラペチーノ', 3, FALSE, TRUE, 535, 575, 620, 665, 9999, 'コーヒーフラペチーノ®にキャラメルシロップをブレンドし、ホイップクリームとキャラメルソースをトッピング

コーヒー、ミルク、キャラメルシロップを氷とブレンドした、多くのお客様に愛されているフラペチーノ®です。トッピングしたホイップクリームとキャラメルソースと混ぜながら、豊かでほんのり香ばしいキャラメルの風味をお楽しみください。', 9, 2, 1, 7, 5, TRUE, TRUE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('抹茶 クリーム フラペチーノ', 3, FALSE, TRUE, 550, 590, 635, 680, 9999, '豊かな風味の抹茶パウダーをブレンドした、クリームベースのフラペチーノ®

世界中で様々な形で飲用されている抹茶ですが、スターバックスではミルクと氷でブレンドしたリフレッシングなフラペチーノ®に仕上げました。', 8, 6, 1, 5, 5, FALSE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('バニラ クリーム フラペチーノ', 3, FALSE, TRUE, 535, 575, 620, 665, 9999, 'ミルクとバニラのなめらかな組み合わせ

ミルクとバニラシロップを氷とブレンドし、ホイップクリームをトッピングした、クリーミーな味わいのフラペチーノ®。真っ白な見た目も爽やかです。ミルクとバニラシロップというシンプルな組み合わせはいろいろなカスタマイズとも好相性。', 9, 1, 1, 7, 4, TRUE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('マンゴー パッション ティー フラペチーノ', 3, FALSE, TRUE, 535, 575, 620, 665, 9999, 'トロピカルな味わいのジュースにパッション ティーをブレンド

マンゴーとパッションフルーツのトロピカル感あふれる味わいに、パッション ティーと氷をブレンドした、フルーティーな味わいのフラペチーノ®。', 5, 1, 7, 6, 5, TRUE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('ハニー カモミール ティー ラテ', 4, TRUE, FALSE, 460, 500, 545, 590, 9999, 'はちみつとカモミールの香り豊かなティー ラテ

鮮やかなシトラスと、カモミールとラベンダーの柔らかな香りをブレンドしたノンカフェインのティー ラテに、はちみつをトッピングしました。
一口飲むとミルクとはちみつの優しい甘さの中に、華やかな香りを感じることができます。', 6, 3, 3, 8, 4, FALSE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('ゆず シトラス ＆ ティー', 4, TRUE, TRUE, 470, 510, 555, 600, 9999, 'ゆずやグレープフルーツなど、シトラスの風味豊かなティービバレッジ

ティーに、グレープフルーツ・オレンジ・レモン・ゆず果皮をミックスしたシトラス果肉を組み合わせました。アイスはブラックティー、ホットはイングリッシュ ブレックファスト ティーを使用し、香り高くすっきりとした飲み心地に仕上げています。
さわやかで香り豊かなティービバレッジで、リラックスしたひとときをお過ごしください。', 4, 2, 5, 1, 5, FALSE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('チャイ ティー ラテ', 4, TRUE, TRUE, 460, 500, 545, 590, 9999, '甘さの中にほんのり香るスパイス

紅茶の味わいにスパイスを効かせたオリジナルシロップと、ミルクのバランスが絶妙に調和したティー ラテ。まろやかなスパイス感と深いコクが特徴のティー ラテです', 3, 5, 2, 3, 5, FALSE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('ほうじ茶 ティー ラテ', 4, TRUE, FALSE, 460, 500, 545, 590, 9999, 'ほうじ茶の香ばしく豊かな風味を楽しめるティー ラテ

ほうじ茶とミルクとの相性を追求して誕生したティー ラテ。ミルクの甘い香りの中に、ほうじ茶の香ばしい香りがしっかりと漂う、やさしい甘さのティーラテです。', 4, 4, 2, 5, 4, FALSE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('抹茶 ティー ラテ', 4, TRUE, TRUE, 460, 500, 545, 590, 9999, 'ほろ苦い抹茶をラテに仕上げ深い味わいに

こだわり抜いた抹茶とミルクを合わせた人気のラテ。ほろ苦い抹茶にほどよく甘みをプラスすることで、より深い味わいが楽しめます。', 5, 6, 3, 3, 5, FALSE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('イングリッシュ ブレックファスト ティー ラテ', 4, TRUE, FALSE, 460, 500, 545, 590, 9999, '紅茶の伝統的な味わいと上品な香りが楽しめるティー ラテ

紅茶の伝統的な味わいがラテスタイルで楽しめます。ミルクとの相性を考えてブレンドしたティーに、温かなスチームミルクとふんわりフォームミルクで仕上げました。上品な香りと優しい風味が特徴です。', 3, 4, 2, 6, 3, FALSE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('カモミール ティー ラテ', 4, TRUE, FALSE, 460, 500, 545, 590, 9999, 'カモミールの香り豊かなティー ラテ

鮮やかなシトラスに、カモミールとラベンダーの柔らかな香りをブレンドした香り豊かなノンカフェインのティー ラテ。一口飲むとミルクの甘さの中に華やかな香りを感じることができます。', 5, 6, 2, 7, 2, FALSE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('アールグレイ ティー ラテ', 4, TRUE, FALSE, 460, 500, 545, 590, 9999, 'ベルガモットの香り豊かなティー ラテ

ラベンダーの香り華やぐアールグレイに温かなスチームミルクとふんわりフォームミルクで仕上げました。バニラシロップで甘さを加えることで、より華やかな印象です。', 4, 5, 3, 5, 2, FALSE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('ゼンクラウド ウーロン ティー ラテ', 4, TRUE, FALSE, 460, 500, 545, 590, 9999, 'ミルクの甘い香りの中に上質な香りが漂うティー ラテ

さわやかでアロマティックな香り、軽やかな飲み心地のゼン クラウド ウーロンのティー ラテ。シロップでほんのり甘さをプラスし、スチームミルクとふんわりフォームミルクで仕上げています。
ミルクの甘い香りの中に、さわやかで上質な香りが漂うティー ラテで、リラックスしたひとときをお過ごしください。', 6, 3, 2, 7, 2, FALSE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('アイスティー(ブラック)', 4, FALSE, TRUE, 420, 460, 506, 550, 9999, '紅茶の伝統的な味わいと上品な香りが楽しめるティー', 1, 5, 4, 1, 2, FALSE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('アイスティー(パッション)', 4, FALSE, TRUE, 420, 460, 506, 550, 9999, '爽やかな酸味のティー

ハイビスカス、オレンジピール、シナモン、リコリス等がブレンドされた鮮やかな赤色のノンカフェインのハーブティーです。', 1, 4, 4, 1, 2, FALSE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('イングリッシュ ブレックファスト', 4, TRUE, TRUE, 460, 460, 506, 550, 9999, '紅茶の伝統的な味わいと上品な香りが楽しめるティー

紅茶の伝統的な味が楽しめるブレンドです。インド産の茶葉をベースに、スリランカ産などの茶葉を加え、上品な香りが引き立ちます。', 2, 3, 5, 2, 1, FALSE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('アール グレイ', 4, TRUE, TRUE, 460, 460, 506, 550, 9999, 'ベルガモットの香り豊かなブラックティー

アール グレイを香り豊かなベルガモットエッセンスで香り付けした、華やかなブラックティーのブレンドです。', 2, 3, 5, 2, 1, FALSE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('カモミール', 4, TRUE, TRUE, 460, 460, 506, 550, 9999, 'フローラルの香りが特長のティー

鮮やかなシトラスに、カモミールとラベンダーの柔らかな香りをブレンドしたノンカフェインティー。優しいフローラルの香りが特長です。', 3, 2, 4, 1, 1, FALSE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('ユースベリー', 4, TRUE, TRUE, 460, 460, 506, 550, 9999, 'フルーティーな味わいのホワイトティー

パイナップルやマンゴーなどをブレンドしたホワイトティーです。ハイビスカスと酸味のあるアップルでバランスのとれた味わいに仕上げました。', 3, 2, 6, 2, 1, FALSE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('ほうじ茶', 4, TRUE, TRUE, 460, 460, 506, 550, 9999, '香ばしく豊かな風味のティー

日本で古くから親しまれているほうじ茶をスターバックスで楽しめます。香ばしく豊かな風味を追及し、こだわり抜いた茶葉をブレンドしています。', 1, 3, 4, 2, 1, FALSE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('ゼンクラウド ウーロン', 4, TRUE, TRUE, 460, 460, 506, 550, 9999, 'さわやかでアロマティックな香り、ほのかな甘みが楽しめるティー

さわやかでアロマティックな香り、ほのかな甘み、軽やかな飲み心地が特徴のティーです。
中国の山深く、雲と霧という天然の天蓋に覆われた標高約850メートルの茶畑で、ゆっくりと豊かな風味を凝縮させながら育った茶葉を使っています。', 2, 2, 3, 2, 1, FALSE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('ココア', 5, TRUE, TRUE, 455, 495, 540, 585, 9999, 'チョコレートシロップにミルク、ホットにはホイップクリームを

チョコレートシロップにミルクが調和し、やさしい甘さに仕上げました。ホットはホイップクリームがほどよく溶けてまろやかな口当たりです。', 8, 1, 1, 8, 3, FALSE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('キャラメル クリーム', 5, TRUE, TRUE, 455, 495, 540, 585, 9999, 'キャラメル風味の温かいミルク

キャラメル風味の温かいミルクの上に、ホイップクリームとキャラメルソースをトッピングしました。ミルキーな甘さとキャラメルの風味を存分に楽し', 9, 1, 1, 8, 2, FALSE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('ミルク', 5, TRUE, TRUE, 396, 435, 480, 525, 9999, 'ミルクのほっとする甘さを感じられるビバレッジ

お子様用のキッズミルクもご用意しています。', 7, 1, 1, 8, 1, FALSE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('キッズ ココア', 5, TRUE, TRUE, 9999, 9999, 9999, 9999, 220, '12歳以下のお子様用ドリンク

お子様向けのココアです。ホットは、お子様でも飲みやすい温度でお作りします。
キッズ ミルクもご用意しています。', 8, 1, 1, 8, 1, TRUE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('キッズ ミルク', 5, TRUE, TRUE, 9999, 9999, 9999, 9999, 220, '12歳以下のお子様用ドリンク

お子様向けのミルクです。ホットは、お子様でも飲みやすい温度でお作りします。
キッズ ココアもご用意しています。', 7, 1, 1, 8, 1, TRUE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('be juicy ! kids （アップル）', 5, FALSE, TRUE, 9999, 9999, 9999, 9999, 240, '果汁100％のジュース

お子様が飲みやすいように厳選した果汁を使用しました。スターバックスオリジナルの濃縮還元果汁100％ジュース。', 9, 1, 7, 4, 1, TRUE, FALSE);


INSERT INTO starbucks_drinks (drink_name, category, hot, ice, short, tall, grande, venti, other, detail, sweet, bitter, sour, mild, rank, kids, coffee)
VALUES ('be juicy ! kids （オレンジ）', 5, FALSE, TRUE, 9999, 9999, 9999, 9999, 240, '果汁100％のジュース

お子様が飲みやすいように厳選した果汁を使用しました。スターバックスオリジナルの濃縮還元果汁100％ジュース。', 9, 1, 7, 4, 1, TRUE, FALSE);
