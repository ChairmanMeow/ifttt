class Team < ActiveRecord::Base
  has_many :users
  attr_accessible :name

  validates :name, presence: true, length: { maximum: 50 }, 
  				   uniqueness: { case_sensitive: true }
end
