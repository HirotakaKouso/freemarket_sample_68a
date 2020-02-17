class Order < ApplicationRecord
  belongs_to :prefecture
  belongs_to :payment
  belongs_to :item
  belongs_to :buyer, class_name: "User"
end
