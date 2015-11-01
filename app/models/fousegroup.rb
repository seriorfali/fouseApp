class Fousegroup < ActiveRecord::Base
  has_many :fuildings
  has_many :floors, through: :fuildings
  has_many :fouses, through: :floors
  has_many :developers, through: :fuildings
  belongs_to :neighborhood
end
