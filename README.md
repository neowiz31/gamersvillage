# アプリ名

## gamersvillage

# 概要

   ユーザーがゲーム情報を登録することができ、またそれに付随してコメントを投稿することができる
   各々のゲームタイトルに対しての投稿を新規投稿順に把握することができる

# 制作背景・意図

   今年登場したPS5や、任天堂ではSwith等、旧作ゲームを売りにした傾向が強まってきています。
   しかし新規タイトルのゲームについては公式から様々な情報が流れますが、旧作についてはその限りではありません。
   このアプリケーションを介して、ユーザー同士で旧作ゲームについて薦めあったり、情報共有を行うことを目的としています。
   また、今後はユーザー同士をフォローし合い、個人同士で連絡を取り合える機能の実装を考えています。
   これによって、このアプリケーションをきっかけに新たな人的交流を生み出します。

# DEMO

## トップページ
<img width="1433" alt="4bf4d5d8d79e58c64351870237a3b4ec" src="https://user-images.githubusercontent.com/74454206/115996626-feda1e00-a61a-11eb-8329-db8f7e554b4e.png">

左バーには新規登録・ログイン・投稿ボタンを配置し、中央は投稿されたゲーム情報が並びます。
右バーは、それぞれのゲームに投稿したコメントが並びます。
右バーの投稿コメントにはゲームタイトルも記載されており、クリックするとゲーム情報の詳細画面へ遷移します。

## 新規ユーザー登録画面
<img width="820" alt="63bf228e18fd6b272185151facc7b08e" src="https://user-images.githubusercontent.com/74454206/115995911-2c719800-a618-11eb-8a83-e93737100e0e.png">

ニックネーム・メールアドレス・パスワード・パスワード確認用・氏名・氏名（全角カナ）・生年月日を入力することによってユーザー登録されます。

## ゲーム情報登録画面
<img width="1433" alt="6bac8350d0ea0d49fea3e871ac2c8124" src="https://user-images.githubusercontent.com/74454206/115996309-bbcb7b00-a619-11eb-8fd8-908db9878dc2.png">
ログインしているユーザーは、ゲーム情報登録画面にてゲーム情報を登録することができます。ログインしていない場合に「投稿する」ボタンをクリックした場合は、ログイン画面へ遷移します。
こちらではゲーム画像・機種・ゲームジャンルの選択が必須となります。公式URLについては任意となります。

## ゲーム情報詳細画面
![93ddc5b9c331ba290c2937dc4d49fa3e](https://user-images.githubusercontent.com/74454206/115996414-22509900-a61a-11eb-8617-0d6dda84f201.jpeg)
投稿されたゲーム情報は詳細画面を開くことができます。ログインをしていない場合コメント投稿フォームは表示されませんが、投稿済みのコメントは閲覧できます。


# 工夫したポイント

・ゲームを好きなユーザーが入りやすい雰囲気となるように、デザインをゲーム調にしました。
・全投稿を一覧で見ることができ、ユーザーは最新の情報を得ることができるようにしました。

# 仕様技術（開発環境）

## バックエンド

Ruby,Ruby on Rails

## フロントエンド

html,css

## データベース

MySQL

## ソース管理

GitHub,GitHub Desktop

## テスト

RSpec

## エディタ

VSCode

# 今後実装したい機能

・ユーザーが好みのゲーム情報をフォローする機能
・ユーザーが好みのユーザーをフォローする機能
・ユーザーが個人同士で交流できるチャットルーム機能



# DB設計

# README

## users テーブル

| Column              | type    | Options                   |
| ------------------- | ------- | ------------------------- |
| nickname            | string  | null: false               |
| email               | string  | null: false, unique: true |
| encrypted_password  | string  | null: false               |
| gender_id           | integer | null: false               |
| last_name           | string  | null: false               |
| first_name          | string  | null: false               |
| last_name_kana      | string  | null: false               |
| first_name_kana     | string  | null: false               |
| birth_day           | date    | null: false               |  

### Association

- has_many :games
- has_many :comments
- has_many :follow_games
- has_one  :user_profile

## user_profiles テーブル

| Column             | type       | Options           |
| ------------------ | ---------- | ----------------- |
| game_genre_id      | integer    | null: false       |
| play_together_game | string     |                   |
| user_introduction  | string     | null: false       |
| user               | references | foreign_key: true |

### Association

- belongs_to :user

## games テーブル

| Column           | type       | Options           |
| ---------------- | ---------- | ----------------- |
| game_title       | string     | null: false       |
| hardware_id      | integer    | null: false       |
| game_genre_id    | integer    | null: false       |
| official_url     | string     |                   |
| user             | references | foreign_key: true |

### Association

- belongs_to :user
- has_many   :comments
- has_many   :follow_games

## comments テーブル

| Column      | type       | Options           |
| ----------- | ---------- | ----------------- |
| text        | string     | null: false       |
| user        | references | foreign_key: true |
| game        | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :game

## follow_game テーブル

| Column             | type       | Options           |
| ------------------ | ---------- | ----------------- |
| user               | references | foreign_key: true |
| game               | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :game
