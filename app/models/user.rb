class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true

  enum gender: { man: 0, woman: 1 }

  #validates :password,
            #format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i, message: 'is invalid. Include both letters and numbers' }

  #validates :last_name, :first_name,
            #format: { with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/, message: 'is invalid. Input full-width characters' }

  #validates :last_name_reading, :first_name_reading,
            #format: { with: /\A[ァ-ヶー－]+\z/, message: 'is invalid. Input full-width katakana characters' }

  #has_many :items
  #has_many :comments
  #has_many :orders

end
