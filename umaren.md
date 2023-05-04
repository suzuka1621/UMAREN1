# テーブル設計

## users テーブル

| Column             | Type                | Options                        |
|--------------------|---------------------|--------------------------------|
| nickname           | string              | null: false,                   |
| email              | string              | null: false, unique: true      |
| encrypted_password | string              | null: false                    |
| gender             | integer             | null: false                    |
| birthday           | date                | null: false                    |
| prefecture_id      | integer             |                                |
| favorite_genre     | string              |                                |
| self-introduction  | text                |                                |
| profile_image      | string              |                                |

### Association

* has_many :chat_rooms, through:chat_room_users
* has_many :reactions
* has_many :chat_room_users
* has_one :identifications



## chat_messages テーブル

| Column             | Type               | Options                        |
|--------------------|--------------------|--------------------------------|
| content            | text               |                                |
| user               | references         | null: false, foreign_key: true |
| chat_room          | references         | null: false, foreign_key: true |     

### Association

- belongs_to :user
- belongs_to :chat_room



## chat_rooms テーブル

| Column             | Type               | Options                        |
|--------------------|--------------------|--------------------------------|
|                    |                    |                                | 

### Association

* has_many :chat_room_users
* has_many :users, through: :chat_room_users



## chat_room_users テーブル

| Column             | Type       | Options                                |
|--------------------|------------|----------------------------------------|
| user               | references | null: false, foreign_key: true         |
| chat_room          | references | null: false, foreign_key: true         |

### Association

- belongs_to :user
- belongs_to :chat_room



## reactions テーブル

| Column             | Type       | Options                                |
|--------------------|------------|----------------------------------------|
| to_user_id         | references | null: false, foreign_key: true         |
| from_user_id       | references | null: false, foreign_key: true         |
| status             | integer    | null: false                            |


### Association

- belongs_to :user



## identifications テーブル

| Column             | Type       | Options                                |
|--------------------|------------|----------------------------------------|
| certification      | string     | null: false                            |
| user               | references | null: false, foreign_key: true         |

### Association

- belongs_to :user