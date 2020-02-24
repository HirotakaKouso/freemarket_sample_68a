class User < ApplicationRecord
  belongs_to :prefecture
  has_many :items
  has_many :orders
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }

  # validates :nickname, :only_integer, presence: true
  # validates :password, presence: true
  # validates :last_name, presence: true
  # validates :first_name, presence: true
  # validates :last_name_kana, presence: true
  # validates :first_name_kana, presence: true
  # validates :tel, :only_integer, presence: true
  # validates :zip_code, :only_integer, presence: true
  # validates :prefecture_id, :only_integer, presence: true
  # validates :address, presence: true
  # validates :birth_year, :only_integer, presence: true
  # validates :birth_month, :only_integer, presence: true
  # validates :birth_day, :only_integer, presence: true




end
