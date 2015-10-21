class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.column :user_id, :int
      t.column :item_id, :int
      t.column :amount,  :int
    end
  end
end
