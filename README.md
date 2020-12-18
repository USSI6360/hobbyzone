## アプリ名
Hobbyzone



## アプリケーション名
hobbyzone
## アプリケーション概要
趣味を始めたい人と趣味の集まりやサークルをつなげる、
今までアウトドアを楽しんでいた人でもインドアの楽しみを見つけることができるアプリ。
URL：
## 利用方法：気軽に入り、気になる項目を見つけたら5分程度で見ることが出来る
## 目指した課題解決
これから新しい趣味を始めようとする人や新しい趣味に興味がある人
と趣味を共有したいサークルをつなげるアプリ
洗い出した要件：検索　ユーザーが簡単にデータ検索出来るようにする　ユーザーにとって必要なデータのみ出せるようにする。　データが存在していることが前提。・データ名の検索条件を指定する欄を儲ける。
## 製作背景（こだわった点）
テックキャンプのカリキュラム内容を確認し、忠実に再現する事を
拘りました。
## 参考アプリ
テックキャンプカリキュラム（pictweet protospace) youtube(recipegram)
## DEMO

### トップページ
![](https://i.gyazo.com/04dccc81260fd701a51d537df84fd461.jpg)

### 機能一覧
https://gyazo.com/42a8c9c81ee853168566f69b5c3922cf

### ユーザー一覧
https://gyazo.com/63334d1c0673d9c96a415ea6a87db1a3

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
