# freemarket_sample_68a

## * 概要:プログラミングスクールのチーム開発でフリマサイトの作成

## 機能、使用技術一覧

* 商品出品機能
* 商品購入機能
* 商品情報編集機能
* 商品削除機能
* カテゴリー選択機能
* 商品検索機能
* パンくず機能
* いいね機能


* ruby 2.5.1p57
* インフラ:AWS
* DB:MySQL

# freemarket_sample_68a DB設計

## items table
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|price|integer|null:false|
|description|text|null:false|
|brand_id|references|null:false,foreign_key:true|
|condition_id|references|null:false,foreign_key:true|
|size_id|references|null:false,foreign_key:true|
|category_id|references|null:false,foreign_key:true|
|prefecture_id|references|null:false,foreign_key:true|
|user_id|references|null:false,foreign_key:true|
|delivery_date_id|references|null:false,foreign_key:true|
|shipping_fee_id|references|null:false,foreign_key:true|
|likes_count|integer||

### association
- belongs_to :brand
- belongs_to :condition
- belongs_to :size
- belongs_to :category
- belongs_to :prefecture
- belongs_to :user
- belongs_to :delivery_date
- belongs_to :shipping_fee
- has_many :images
- has_one :order
- has_many :likes


## images table
|Column|Type|Options|
|------|----|-------|
|src|string|null: false|
|item_id|references|null:false, foreign_key: true|

### association
- belongs_to :item

## brands table
|Column|Type|Options|
|------|----|-------|
|name|string|unique: true|

### association
- has_many :items

## conditions table
|Column|Type|Options|
|------|----|-------|
|condition|string|null:false unique: true|

### association
- has_many :items

## sizes table
|Column|Type|Options|
|------|----|-------|
|size|string|unique: true|

### association
- has_many :items

## categories table
|Column|Type|Options|
|------|----|-------|
|name|string|null:false, unique:true|
|ancestry|string||

### association
- has_many :items
- has_ancestry

## users table
|Column|Type|Options|
|------|----|-------|
|last_name|string|null:false|
|first_name|string|null:false|
|last_name_kana|string|null:false|
|first_name_kana|string|null:false|
|nickname|string|null:false, unique:true|
|email|string|null:false, unique:true,default: ""| 
|password|string|null:false,default: ""| 
|tel|string|null:false|
|zip_code|integer|null:false|
|address|string|null:false|
|birth_year|integer|null:false|
|birth_month|integer|null:false|
|birth_day|integer|null:false|
|prefecture_id|references|null:false, foreign_key:true|

### association
- belongs_to :prefecture
- has_many :items
- has_many :orders
- has_one :card
- has_many :likes

## prefectures table
|Column|Type|Options|
|------|----|-------|
|prefecture|string|null:false, unique:true|

### association
- has_many :users
- has_many :orders
- has_many :items

## orders table
|Column|Type|Options|
|------|----|-------|
|last_name_receiver|string|null:false| 送付先姓
|first_name_receiver|string|null:false| 送付先名
|last_name_kana_receiver|string|null:false| 姓かな
|first_name_kana_receiver|string|null:false| 名かな

|zip_code_receiver|integer|null:false| 郵便番号(配達先)
|address_receiver|text|null:false|市区町村(配達先)
|tel_receiver|string|| 配達先電話番号
|prefecture_id|references|null:false, foreign_key:true| 都道府県(配達先)
|payment_id|references|null:false, foreign_key:true|
|item_id|references|null:false, foreign_key:true|
|buyer_id|references|null:false, foreign_key:true| 買い手(user_id)

### association
- belongs_to :prefecture
- belongs_to :payment
- belongs_to :item
- belongs_to :buyer, class_name: "User"



## payments table
|Column|Type|Options|
|------|----|-------|
|method|string|null:false,unique:true|

### association
- has_many :orders


## delivery_dates table
|Column|Type|Options|
|------|----|-------|
|date|string|null:false,unique:true|

### association
- has_many :items

## shipping_fees table
|Column|Type|Options|
|------|----|-------|
|fee|string|null:false,unique:true|

### association
- has_many :items

## cards table
|Column|Type|Options|
|------|----|-------|
|user_id|references|null:false,foreign_key:true|
|customer_id|string|null:false|
|card_id|string|null:false|

### association
- belongs_to :user

## likes table
|Column|Type|Options|
|------|----|-------|
|item_id|references|null:false,foreign_key:true|
|user_id|references|null:false,foreign_key:true|

### association
- belongs_to :item
- belongs_to :user
