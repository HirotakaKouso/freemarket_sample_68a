class User < ApplicationRecord
  belongs_to :prefecture
  has_one :card
  has_many :items
  has_many :orders
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :zip_code, format: { with: /\A\d{7}\z|\A\d{3}-\d{4}\z/ }
  validates :tel, format: { with: /\A0\d{9,10}\z|\A0\d{2,3}-\d{1,4}-\d{4}\z/ }
end
