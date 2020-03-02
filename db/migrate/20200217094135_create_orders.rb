class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|

      t.string     :last_name_receiver,         null:false
      t.string     :first_name_receiver,        null:false
      t.string     :last_name_kana_receiver,    null:false
      t.string     :first_name_kana_receiver,   null:false
      t.integer    :zip_code_receiver,          null:false
      t.text       :address_receiver,           null:false

      t.string     :tel_receiver
      t.references :prefecture,                null:false, foreign_key:true
      t.references :payment,                   null:false, foreign_key:true
      t.references :item,                      null:false, foreign_key:true
      t.references :buyer, foreign_key: { to_table: :users }, null: false
      t.timestamps
    end
  end
end
