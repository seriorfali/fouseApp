class Neighborhood < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :fousegroups
  has_many :fuildings, through: :fousegroups
  has_many :fouses, through: :fuildings
end
