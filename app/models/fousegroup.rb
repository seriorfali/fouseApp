class Fousegroup < ActiveRecord::Base
  has_many :fuildings
  has_many :fouses, through: :fuildings
  has_many :likes, as: :likable
  belongs_to :neighborhood
  has_many :photos, as: :imageable
end
