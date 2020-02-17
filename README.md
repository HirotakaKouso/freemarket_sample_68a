# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
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
|name|string|null:false, unique: true|

### association
- has_many :items
- has_many :brand_categories
- has_many :categories, through: :brand_categories

## conditions table
|Column|Type|Options|
|------|----|-------|
|condition|string|null:false unique: true|

### association
- has_many :items

## sizes table
|Column|Type|Options|
|------|----|-------|
|size|string|null:false unique: true|

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
- has_many :brand_categories
- has_many :brands, through: :brand_categories

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
|buyer|references|null:false, foreign_key:true| 買い手(user_id)

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

## brand_categories
|Column|Type|Options|
|------|----|-------|
|brand_id|references|null:false, foreign_key: true|
|category_id|references|null:false, foreign_key: true|

### association
- belongs_to :brand
- belongs_to :category

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
