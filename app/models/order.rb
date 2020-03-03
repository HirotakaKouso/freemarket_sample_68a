class Order < ApplicationRecord
  belongs_to :prefecture
  belongs_to :payment
  belongs_to :item
  belongs_to :buyer, class_name: "User"

  validates :last_name_receiver, presence:true
  validates :first_name_receiver, presence:true
  validates :last_name_kana_receiver, presence:true
  validates :first_name_kana_receiver, presence:true
  validates :zip_code_receiver, presence:true
  validates :address_receiver, presence:true
end
