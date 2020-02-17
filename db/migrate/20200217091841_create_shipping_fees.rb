class CreateShippingFees < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_fees do |t|
      t.string :fee, null: false, unique: true
      t.timestamps
    end
  end
end
