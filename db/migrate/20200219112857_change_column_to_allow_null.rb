class ChangeColumnToAllowNull < ActiveRecord::Migration[5.2]
  def up
    change_column :sizes, :size,:string, null: true 
  end
  def down
    change_column :sizes, :size,:string, null: false
  end
end

