class User < ApplicationRecord
  belongs_to :prefecture
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :prefecture_id, presence: true, length: { minimum:1,maximum:47}

end
