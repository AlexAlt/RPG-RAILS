class AddInventoryIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :inventory_id, :int
  end
end
