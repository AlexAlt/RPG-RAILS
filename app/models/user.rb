class User < ActiveRecord::Base
  has_one :inventory

  validates :name, :presence => true
  validates :attack, :presence => true
  validates :password_hash, :presence => true
  validates :password_salt, :presence => true
end
