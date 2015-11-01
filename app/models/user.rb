class User < ActiveRecord::Base
  belongs_to :neighborhood
  has_many :photos
  has_many :fouses
end
