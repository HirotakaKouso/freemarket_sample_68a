class Item < ApplicationRecord
  belongs_to :brand
  belongs_to :condition
  belongs_to :size
  belongs_to :category
  belongs_to :prefecture
  belongs_to :user
  belongs_to :delivery_date
  belongs_to :shipping_fee
  has_many :images
  has_one :order
end
