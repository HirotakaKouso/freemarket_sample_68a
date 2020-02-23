class ShippingFee < ApplicationRecord
  has_many :items

  validates :shipping_fee, presence:true
end
