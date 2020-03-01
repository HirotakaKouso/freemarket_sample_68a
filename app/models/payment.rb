class Payment < ApplicationRecord
  has_many :orders

  validates :method, presence:true
end
