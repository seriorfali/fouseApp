class Country < ActiveRecord::Base
  has_many :cities
  has_many :neighborhoods, through: :cities
  has_many :users, through: :neighborhoods
  has_many :developers, through: :neighborhoods
  has_many :fousegroups, through: :neighborhoods
  has_many :fuildings, through: :fousegroups
end
