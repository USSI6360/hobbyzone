## アプリケーション名
Hobbyzone
## アプリケーション概要
趣味を始めたい人と趣味の集まりやサークルをつなげる、
今までアウトドアを楽しんでいた人でもインドアの楽しみを見つけることができるアプリ。

## 機能一覧
ユーザー登録機能、投稿機能、投稿編集機能、投稿削除機能、マイページ機能

## DEMO

### トップページ
![](https://i.gyazo.com/04dccc81260fd701a51d537df84fd461.jpg)

### 機能一覧
![](https://i.gyazo.com/42a8c9c81ee853168566f69b5c3922cf.gif)
### ユーザー一覧
![](https://i.gyazo.com/e56432caf7e36ad0209c79397b6320b2.gif)
## 使用技術（開発環境）
バックエンド：Ruby,Ruby on Rails
データベース：MySQL
ソース管理：Github
エディタ：VSCode

## 今後の課題
1:画像を複数掲載できる様にしてゲーム、趣味の内容をもっと分かりやすい投稿内容にしたい。  
2:サークルのURLの投稿欄を別にすべきだった。  
3:APIを利用しておすすめの店舗などを投稿できる様にしてみたい。  
4:JavaScriptを使用して趣味にかかる費用を気軽に投稿できる様にしたい。  

## データベース設計:
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
