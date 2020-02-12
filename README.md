# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
## products table
|Column|Type|Options|
|------|----|-------|
|name||| 商品名
|image1||| 商品画像1(4枚まで)
|price||| 商品価格
|description||| 商品説明
|brand||| ブランド
|status||| 状態
|size||| サイズ

## users table
|Column|Type|Options|
|------|----|-------|
登録時に必要
|last_name||| 苗字
|first_name||| 名
|nickname||| ニックネーム
|email||| eメール
|password||| パスワード
|gender||| 性別
|birth_year||| 誕生年
|birth_month||| 誕生月
|birth_day||| 誕生日
|point||| ポイント
|proceed|||売上金
|tel|||電話番号
|zip_code||| 郵便番号
|prifecture||| 都道府県
|address|||市区町村

## orders table
|shopping_fee||| 配送料（込みか無しか）
|payment_method||| 支払い方法
|delivery_day||| 配送日の目安
|order_status||| 注文状態
|buyer||| 買い手(user_id)
|seller||| 売り手(user_id)
|buyer_last_name||| 買い手苗字
|buyer_first_name||| 買い手名
|seller_last_name||| 売り手苗字
|seller_first_name||| 売り手名
|zip_code_deliver||| 郵便番号(配達先)
|prifecture_deliver||| 都道府県(配達先)
|address_deliver|||市区町村(配達先)
|buyer_tell||| 配達先電話番号

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
