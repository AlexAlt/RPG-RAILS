class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.column :name, :string
      t.column :value, :integer
    end
  end
end
