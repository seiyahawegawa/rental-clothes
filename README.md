# README



## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, foreign_key: true|
|password|string|null: false|
|first_name|string|null: false|
|family_name|string|null: false|
|first_name_kana|string|null: false|
|family_name_kana|string|null: false|
|birthday|date|null: false|

### Association
- has_one:credit_card
- has_many:rental
- has_many:clothes
- has_many:evaluation-comments

## credit_cardsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false,foregin_key: true|
|customer_id|string|null: false|
|card_id|string|null: false|

### Association
- belongs_to: user


## addressesテーブル

|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|address_first_name|string| null: false|
|address_family_name|string|null: false|
|address_first_name_kana|string|null: false|
|address_family_name_kana|string|null: false|
|post_code|string|null: false|
|prefecture_id|string|null: false|
|city|date|null: false|
|address_line|string|null: false|
|building_name|string||
|phone_number|integer|null:false,uniqueness:true|

### Association
- belongs_to:user
- belongs_to_active_hash:prefecture

## rentalテーブル

|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|clothes|references|null: false, foreign_key: true|
|returndate|references|null: false, foreign_key: true|


### Association
- belonge_to:user
- belonge_to:clothes


## evaluation-comments

|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|clothes|references|null: false, foreign_key: true|
|introduction|text|null: false|

### Association
- belonge_to:user
- belonge_to:clothes

## return

Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|clothes|references|null: false, foreign_key: true|
|returndate|references|null: false, foreign_key: true|

### Association
- belonge_to:user
- has_many:clothes
