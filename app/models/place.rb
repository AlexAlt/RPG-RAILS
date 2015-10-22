class Place < ActiveRecord::Base
  has_many :monsters

  validates :name, :presence => true

  def self.scout(place)
      place1 = Place.all.where(xcoord: place.xcoord).where(ycoord: (place.ycoord + 1)).first
      place1.update_attributes(:accessible? => true) if place1

      place2 = Place.all.where(xcoord: place.xcoord).where(ycoord: (place.ycoord - 1)).first
      place2.update_attributes(:accessible? => true) if place2

      place3 = Place.all.where(ycoord: place.ycoord).where(xcoord: (place.xcoord + 1)).first
      place3.update_attributes(:accessible? => true) if place3

      place4 = Place.all.where(ycoord: place.ycoord).where(xcoord: (place.xcoord - 1)).first
      place4.update_attributes(:accessible? => true) if place4
  end

end
