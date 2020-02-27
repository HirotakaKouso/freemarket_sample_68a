class ShippingFee < ApplicationRecord
  has_many :items

  validates :fee, presence:true
end
