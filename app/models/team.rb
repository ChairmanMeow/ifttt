class Team < ActiveRecord::Base
  attr_accessible :name
  has_many :users
  accepts_nested_attributes_for :users

  validates :name, presence: true, length: { maximum: 50 }, 
  				   uniqueness: { case_sensitive: true }
end
