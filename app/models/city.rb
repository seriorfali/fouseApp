class City < ActiveRecord::Base
  belongs_to :country
  has_many :neighborhoods
  has_many :users, through: :neighborhoods
  has_many :developers, through: :neighborhoods
  has_many :fousegroups, through: :neighborhoods
  has_many :fuildings, through: :fousegroups
end
