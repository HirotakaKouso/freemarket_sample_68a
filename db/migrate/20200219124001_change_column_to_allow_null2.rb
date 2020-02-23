class ChangeColumnToAllowNull2 < ActiveRecord::Migration[5.2]
  def up
    change_column :users, :last_name,:string, null: true
    change_column :users, :first_name,:string, null: true
    change_column :users, :last_name_kana,:string, null: true
    change_column :users, :first_name_kana,:string, null: true
    change_column :users, :nickname,:string, null: true
    change_column :users, :tel,:string, null: true
    change_column :users, :zip_code,:string, null: true
    change_column :users, :address,:string, null: true
    change_column :users, :birth_year,:string, null: true
    change_column :users, :birth_month,:string, null: true
  end
  
  def down
    change_column :users, :last_name,:string, null: false
    change_column :users, :first_name,:string, null: false
    change_column :users, :last_name_kana,:string, null: false
    change_column :users, :first_name_kana,:string, null: false
    change_column :users, :nickname,:string, null: false
    change_column :users, :tel,:string, null: false
    change_column :users, :zip_code,:string, null: false
    change_column :users, :address,:string, null: false
    change_column :users, :birth_year,:string, null: false
    change_column :users, :birth_month,:string, null: false
  end
end
