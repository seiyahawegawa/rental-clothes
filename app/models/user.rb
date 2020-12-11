class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email,
    format: { with: /\A[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*\z/},
    presence: true
  validates :password,
    presence: true, length: { minimum: 7 }
  validates :encrypted_password,
    presence: true, length: { minimum: 7 }
  validates :family_name,
    format: { with: /\A([ぁ-んァ-ン一-龥]|ー)+\z/},
    presence: true
  validates :first_name,
    format: { with: /\A([ぁ-んァ-ン一-龥]|ー)+\z/},
    presence: true
  validates :family_name_kana,
    format: { with: /\A[ァ-ヶー－]+\z/},
    presence: true
  validates :first_name_kana,
    format: { with: /\A[ァ-ヶー－]+\z/},
    presence: true

  has_one :address
  has_many :users
end
