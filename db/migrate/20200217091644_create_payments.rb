class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :method, null: false, unique: true
      t.timestamps
    end
  end
end
