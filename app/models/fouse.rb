class Fouse < ActiveRecord::Base
  belongs_to :user
  belongs_to :floor
  has_many :likes, as: :likable
  has_many :photos, as: :imageable
end
