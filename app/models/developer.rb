class Developer < ActiveRecord::Base
  has_many :fuildings
  has_and_belongs_to_many :neighborhoods
end
