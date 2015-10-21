class AddAttrsToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :accessible?, :boolean, :default => false
    add_column :places, :xcoord, :int
    add_column :places, :ycoord, :int
  end
end
