class AddMonsterToken < ActiveRecord::Migration
  def change
    add_column :monsters, :token, :string, :default => "images/thumb/monster.png"
  end
end
