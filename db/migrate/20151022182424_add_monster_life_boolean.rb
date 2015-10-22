class AddMonsterLifeBoolean < ActiveRecord::Migration
  def change
    add_column :monsters, :alive?, :boolean, :default => true
  end
end
