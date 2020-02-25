class DeliveryDate < ApplicationRecord
  has_many :items

  validates :date, presence:true
end
