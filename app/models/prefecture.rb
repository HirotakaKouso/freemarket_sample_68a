class Prefecture < ApplicationRecord
  has_many :users
  has_many :orders
  has_many :items
end
