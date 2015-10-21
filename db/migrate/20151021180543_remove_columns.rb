class RemoveColumns < ActiveRecord::Migration
  def change
    remove_column :users, :password_hash
    remove_column :users, :password_salt
    change_column :users, :attack, :int, :default => 2
  end
end
