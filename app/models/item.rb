class Item < ApplicationRecord
  belongs_to :brand, optional:true
  belongs_to :condition
  belongs_to :size, optional:true
  belongs_to :category
  belongs_to :prefecture
  belongs_to :user
  belongs_to :delivery_date
  belongs_to :shipping_fee
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  has_one :order

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :shippingMethod

  validates :name, presence:true
  validates :price, presence:true
  validates :description, presence:true
  validates :method, presence:true
  validates :price, numericality:{ greater_than_or_equal_to: 300 }
  validates :price, numericality:{ less_than_or_equal_to: 50000 }

  def self.search(search)
    return Item.all unless search
    Item.where(['name LIKE ?',"%#{search}%"])
  end
end
