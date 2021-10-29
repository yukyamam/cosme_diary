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
Basic認証実装後に表示

# 利用方法
- 会員登録後、「New Post」からコスメの情報を投稿します。
- 投稿されたコスメ情報は一覧に表示され、画像をクリックすると詳細ページに遷移します。詳細では、一覧よりも詳しいコスメ情報が表示されます。
- 各所ユーザー名をクリックすると、そのユーザーのマイページに遷移します。マイページでは、ユーザーが投稿したコスメ代の総額が表示されます。

# 目指した課題解決
「あれ持ってたっけ？」「これはいつ買ったんだ？」「プチプラもいいけどデパコスが欲しい！」「コスメ代を日割り換算すると？」etc、いくらあってもまた欲しくなるコスメ欲を上手に記録管理してくれるアプリです。

# 洗い出した要件
- 会員情報の管理
- 投稿するコスメ情報の管理
- ユーザーごとのコスメ代の総額を計算
- コスメごとの日割使用料の計算
