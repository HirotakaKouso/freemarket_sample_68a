class Condition < ApplicationRecord
  has_many :items

  validates :condition, presence:true

end
