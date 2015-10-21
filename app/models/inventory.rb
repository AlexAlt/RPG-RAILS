class Inventory < ActiveRecord::Base
  belongs_to :user
  has_many :items

  validates :user_id, :presence => true
  validates :amount, :presence => true

end
