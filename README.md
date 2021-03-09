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
| official_url     | string     | null: false       |
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
