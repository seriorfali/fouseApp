class Photo < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true, touch: true
  has_many :likes, as: :likable
end
