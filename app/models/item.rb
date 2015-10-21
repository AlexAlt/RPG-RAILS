class Item < ActiveRecord::Base
  belongs_to :inventory

  validates :name, :presence => true
  validates :value, :presence => true
  validates :inventory_id, :presence => true

end
