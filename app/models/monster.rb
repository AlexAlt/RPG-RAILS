class Monster < ActiveRecord::Base
  belongs_to :place

  validates :name, :presence => true
  validates :place_id, :presence => true
  validates :attack, :presence => true
end
