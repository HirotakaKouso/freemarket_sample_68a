# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Condition.create!(
 [ 
  {condition: '新品、未使用'},
  {condition: '未使用に近い'},
  {condition: '目立った傷や汚れなし'},
  {condition: 'やや傷や汚れあり'},
  {condition: '傷や汚れあり'},
  {condition: '全体的に状態が悪い'}
 ]
)

Prefecture.create( name: '北海道' )
Prefecture.create( name: '青森県' )
Prefecture.create( name: '岩手県' )
Prefecture.create( name: '宮城県' )
Prefecture.create( name: '秋田県' )
Prefecture.create( name: '山形県' )
Prefecture.create( name: '福島県' )
Prefecture.create( name: '茨城県' )
Prefecture.create( name: '栃木県' )
Prefecture.create( name: '群馬県' )
Prefecture.create( name: '埼玉県' )
Prefecture.create( name: '千葉県' )
Prefecture.create( name: '東京都' )
Prefecture.create( name: '神奈川県' )
Prefecture.create( name: '山梨県' )
Prefecture.create( name: '長野県' )
Prefecture.create( name: '新潟県' )
Prefecture.create( name: '富山県' )
Prefecture.create( name: '石川県' )
Prefecture.create( name: '福井県' )
Prefecture.create( name: '岐阜県' )
Prefecture.create( name: '静岡県' )
Prefecture.create( name: '愛知県' )
Prefecture.create( name: '三重県' )
Prefecture.create( name: '滋賀県' )
Prefecture.create( name: '京都府' )
Prefecture.create( name: '大阪府' )
Prefecture.create( name: '兵庫県' )
Prefecture.create( name: '奈良県' )
Prefecture.create( name: '和歌山県' )
Prefecture.create( name: '鳥取県' )
Prefecture.create( name: '島根県' )
Prefecture.create( name: '岡山県' )
Prefecture.create( name: '広島県' )
Prefecture.create( name: '山口県' )
Prefecture.create( name: '徳島県' )
Prefecture.create( name: '香川県' )
Prefecture.create( name: '愛媛県' )
Prefecture.create( name: '高知県' )
Prefecture.create( name: '福岡県' )
Prefecture.create( name: '佐賀県' )
Prefecture.create( name: '長崎県' )
Prefecture.create( name: '熊本県' )
Prefecture.create( name: '大分県' )
Prefecture.create( name: '宮崎県' )
Prefecture.create( name: '鹿児島県' )
Prefecture.create( name: '沖縄県' )

fashion_child_array = ['トップス', 'アウター', 'ワンピース', 'シューズ', 'パンツ', 'スカート', 'セット / コーデ', 'バッグ', 'アクセサリー', 'ヘアアクセサリー', 'ルームウェア / パジャマ', 'レッグウェア', '帽子', 'ハンドメイド', '小物', 'ウィッグ / エクステ', 'コスメ / ネイル', '水着 / 浴衣', 'フォーマル / ドレス' ]
fashion_grandchild_array = [['すべて','Tシャツ(半袖 / ノースリーブ)', 'Tシャツ(長袖 / 五丈 / 七丈)', 'カットソー(半袖 / ノースリーブ)', 'カットソー(長袖 / 五丈 / 七丈)', 'シャツ / ブラウス(半袖 / ノースリーブ)', 'シャツ / ブラウス(長袖 / 五丈 / 七丈)', 'ポロシャツ', 'ニット / セーター', 'パーカー', 'カーディガン', 'トレーナー / スウェット', 'キャミソール', 'タンクトップ', 'ベアトップ / チューブトップ', 'ホルタ―ネック', 'チュニック', 'ベスト / ジレ', 'アンサンブル', 'ボレロ' ], ['すべて', 'テーラードジャケット', 'ライダースジャケット', 'Gジャン / デニムジャケット', 'ミリタリージャケット', 'ノーカラージャケット', 'ダウンジャケット', 'ダウンベスト', 'ブルゾン', 'ポンチョ', 'スタジャン', 'スカジャン', 'ロングコート', 'トレンチコート', 'ダッフルコート', 'ピーコート', 'モッズコート', '毛皮 / ファーコート', 'スプリングコート', 'ダウンコート'], ['すべて', 'ミニワンピース', 'ひざ丈ワンピース', 'ロングワンピース'], ['すべて', 'ハイヒール / パンプス', 'ブーツ', 'サンダル', 'スニーカー', 'ブーティ', 'ミュール', 'ローファー / 革靴', 'ラバーブーツ / 長靴'], ['すべて', 'デニム / ジーンズ', 'ショートパンツ', 'カジュアルパンツ', 'ハーフパンツ', 'チノパン', 'スキニーパンツ', 'ワークパンツ / カーゴパンツ', 'クロップドパンツ', 'サロペット / オーバーオール', 'オールインワン', 'キュロット', 'サルエルパンツ'], ['すべて', 'ミニスカート', 'ひざ丈スカート', 'ロングスカート', 'ジャンパースカート'], ['すべて', 'コーディネート', 'まとめ売り'], ['すべて', 'ショルダーバッグ', 'ハンドバッグ', 'トートバッグ', 'リュック / バックパック', 'ボストンバッグ', 'クラッチバッグ', 'エコバッグ', 'ボディバッグ / ウエストポーチ', 'メッセンジャーバッグ', '旅行用バッグ / キャリーバッグ', 'ショップ袋'], ['すべて', 'リング', 'ネックレス', 'ブレスレット / バングル', 'ピアス', 'イアリング', 'ブローチ / コサージュ', 'つけ襟'], ['すべて', 'ヘアバンド', 'カチューシャ', 'ヘアゴム / シュシュ', 'ヘアピン', 'コーム / バレッタ'], ['すべて', 'ルームウェア', 'パジャマ'], ['すべて', 'ソックス', 'レギンス / スパッツ', 'タイツ / ストッキング', 'レッグウォーマー'], ['すべて', 'ニットキャップ / ビーニー', 'ハット', 'ハンチング / ベレー帽', 'キャップ', 'キャスケット'], ['すべて', '小物 / アクセサリー', '素材 / パーツ'], ['すべて', 'ベルト', 'サングラス / メガネ', '腕時計', '財布', 'マフラー / ショール', 'ストール / パシュミナ', 'モバイルケース、カバー', 'ポーチ', 'ストラップ / イヤホンジャック', 'イヤーマフ', '手袋', 'バンダナ / スカーフ', 'ハンカチ', '名刺入れ / 定期入れ', 'キーホルダー', 'ネクタイ', 'サスペンダー', 'ネックウォーマー', 'コインケース', '傘', '小物その他'], ['すべて', 'ショート / ボブ', 'ミディアム', 'ロング', '前髪 / パーツウィッグ', 'エクステ', 'ウィッグ小物'], ['すべて', 'メイクアップ', 'ネイルチップ', 'ネイルケア', 'ネイル / デコパーツ', '香水', 'ヘアケア', 'ボディケア', 'ハンドケア', 'カラコン', 'サプリメント'], ['すべて', '浴衣', '浴衣帯', '着物', '振袖', '帯', '和装小物', '水着', '和装その他'], ['すべて', 'スーツ', 'ドレス']]

parent = Category.create(name: 'ファッション')
fashion_child_array.each_with_index do |child, i|
  child = parent.children.create(name: child)
  fashion_grandchild_array[i].each do |grandchild| 
    child.children.create(name: grandchild)
  end
end

maternity_child_array = ['マタニティウェア', 'マタニティグッズ', 'ベビーウェア', 'ベビーシューズ', 'ベビー用品', 'ベビーカー', 'キッズウェア(男の子用)', 'キッズウェア(女の子用)', 'キッズシューズ', 'キッズバッグ', 'キッズ小物', 'おもちゃ']

parent = Category.create(name: 'マタニティ/ベビー/キッズ')
maternity_child_array.each do |child|
  parent.children.create(name: child)
end


book_child_array = ['本・雑誌', '漫画', 'CD', 'DVD', 'ゲーム']

parent = Category.create(name: '本・CD・DVD・ゲーム')
book_child_array.each do |child|
  parent.children.create(name: child)
end


toy_child_array = ['おもちゃ', 'ぬいぐるみ', 'キャラクターグッズ']

parent = Category.create(name: 'ぬいぐるみ・キャラクターグッズ・おもちゃ')
toy_child_array.each do |child|
  parent.children.create(name: child)
end


talent_child_array = ['アイドル関連', 'トレーディングカード', 'コミック・アニメ本・音楽・DVD', 'コミック・アニメグッズ', '男性ミュージシャン関連', '女性ミュージシャン関連', 'グループミュージシャン関連', 'お笑い芸人関連', '海外アーティスト関連', 'その他タレント関連商品']

parent = Category.create(name: 'コミック、アニメ、タレントグッズ')
talent_child_array.each do |child|
  parent.children.create(name: child)
end


stationery_child_array = ['筆記用具', 'ノート・バインダー', '包装用品', 'その他文房具']

parent = Category.create(name: '文房具')
stationery_child_array.each do |child|
  parent.children.create(name: child)
end


homeAppliances_child_array = ['携帯電話/スマートフォン', '生活家電', 'カメラ', 'PC', 'テレビ/映像機器', 'オーディオ機器', 'その他']

parent = Category.create(name: '家電・スマホ')
homeAppliances_child_array.each do |child|
  parent.children.create(name: child)
end


interior_child_array = ['キッチン/食器', '家具', 'ライト/照明', '寝具', '雑貨', 'その他']

parent = Category.create(name: 'インテリア・住まい・雑貨')
interior_child_array.each do |child|
  parent.children.create(name: child)
end


other_child_array = ['カルチャー', 'レジャー・スポーツ', '自動車用品', 'ペット用品', '食品', '楽器・機材', 'その他']

parent = Category.create(name: 'その他')
other_child_array.each do |child|
  parent.children.create(name: child)
end

ShippingFee.create!(
  [
    {fee: '商品価格に込み'},
    {fee: '商品価格とは別途'}
  ]
)

DeliveryDate.create!(
  [
  {date: '指定なし'},
  {date: '１〜２日で発送'},
  {date: '２〜３日で発送'},
  {date: '４〜7日で発送'},
  {date: '発送は週末のみ'},
  {date: '発送は平日のみ'}
  ]
)