class Place < ActiveRecord::Base
  has_many :monsters

  validates :name, :presence => true


end
