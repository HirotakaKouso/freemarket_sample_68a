class AddShippingMethodIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :shipping_method_id, :integer
    add_column :items, :method, :string
  end
end
