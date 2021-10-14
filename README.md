# テーブル設計

## users テーブル
| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| name               | string  | null: false               |
| email              | string  | null: false, unique: true |
| password           | string  | null: false               |
| encrypted_password | string  | null: false               |
| birth              | date    | null: false               |

### Association
- has_many :items

## items テーブル
| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| name                  | string     | null: false                    |
| category_id           | integer    | null: false                    |
| range_id              | integer    | null: false                    |
| price                 | integer    | null: false                    |
| purchase_date         | date       | null: false                    |
| opening_date          | date       | null: false                    |
| user                  | references | null: false, foreign_key: true |
| image                 |            | Active Storage                 |

### Association
- belongs_to :user

# アプリケーション名
cosme diary (コスメダイアリー)

# 概要
手持ちのコスメを記録管理できます。
コスメのジャンルや用途以外に、購入金額・購入日・開封日なども記録できます。

# URL
追って記載
# テスト用アカウント
追って記載
# 利用方法
追って記載

# 目指した課題解決
「あれ持ってたっけ？」「これはいつ買ったんだ？」「プチプラもいいけどデパコスが欲しい！」「コスメ代を日割り換算すると？」etc、いくらあってもまた欲しくなるコスメ欲を上手に記録管理してくれるアプリです。

# 洗い出した要件
追って記載
# データベース設計
追ってER図を記載
