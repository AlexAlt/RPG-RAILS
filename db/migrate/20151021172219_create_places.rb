class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.column :name, :string
    end
  end
end
