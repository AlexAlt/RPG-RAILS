class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.column :name, :string
      t.column :password_hash, :string
      t.column :password_salt, :string
      t.column :attack, :int
      
      t.timestamps null: false
    end
  end
end
