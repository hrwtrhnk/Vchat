# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## topicsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|video_url|text|default: ''|
|user_id|references|foreign_key: true|

### Association
- has_many :posts
- belongs_to :user

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|content|text|default: ''|
|topic_id|references|foreign_key: true|
|user_id|references|foreign_key: true|

### Association
- belongs_to :topic
- belongs_to :user

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :posts
- has_many :topics

