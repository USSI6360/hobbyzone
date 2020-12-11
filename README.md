Hobbyzone
https://i.gyazo.com/593899f07a809c7176b60f45fc8357f8.jpg

アプリケーション名：hobbyzone
アプリケーション概要：趣味を始めたい人と趣味の集まり、サークルをつなげるアプリ
URL：
利用方法：気軽に入り、気になる項目を見つけたら5分程度で見ることが出来る
目指した課題解決:これから新しい趣味を始めようとする人や新しい趣味に興味がある人
と趣味を共有したいサークルをつなげるアプリ
洗い出した要件：検索　ユーザーが簡単にデータ検索出来るようにする　ユーザーにとって必要なデータのみ出せるようにする。　データが存在していることが前提。・データ名の検索条件を指定する欄を儲ける
データベース設計:
## users テーブル

| Column           | Type          | Options     |
| ---------------- | ------------- | ----------- |
| username         | string        | null: false |
| profile          | string        | null: false |
| profile_image_id | ActiveStorage | null: false |
| mail             | string        | null: false |
| password         | string        | null: false |

### Association

- has_many :prototypes_users

##  hobbyテーブル

| Column     | Type          | Options                        |
| ---------- | ------------- | ------------------------------ |
| user_id    | string        | null: false                    |
| title      | text          | null: false                    |
| body       | ActiveStorage | null: false, foreign_key: true |

### Association

- belongs_to :user


