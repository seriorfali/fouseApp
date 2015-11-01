class Neighborhood < ActiveRecord::Base
  belongs_to :city
  has_many :users
  has_and_belongs_to_many :developers
  has_many :fousegroups
  has_many :fuildings, through: :fousegroups
end
