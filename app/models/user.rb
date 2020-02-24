class User < ApplicationRecord
  belongs_to :prefecture
  has_many :items
  has_many :orders
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }

  validates :nickname,  presence: true
  validates :password, presence: true
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :tel, presence: true
  validates :zip_code, presence: true, numericality: { only_integer: true }
  validates :prefecture_id, presence: true, numericality: { only_integer: true }
  validates :address, presence: true
  validates :birth_year, presence: true, numericality: { only_integer: true }
  validates :birth_month, presence: true, numericality: { only_integer: true }
  validates :birth_day, presence: true, numericality: { only_integer: true }




end
