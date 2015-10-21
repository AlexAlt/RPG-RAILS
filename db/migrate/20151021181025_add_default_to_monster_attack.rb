class AddDefaultToMonsterAttack < ActiveRecord::Migration
  def change
    change_column :monsters, :attack, :int, :default => 1
  end
end
