class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
      t.column :name, :string
      t.column :attack, :int
      t.column :place_id, :int
      t.timestamps null: false
    end
  end
end
