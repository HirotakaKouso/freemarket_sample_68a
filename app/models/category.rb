class Category < ApplicationRecord
  has_many :items
  has_ancestry
  has_many :brand_categories
  has_many :brands, through: :brand_categories 

  validates :name, presence:true
end
