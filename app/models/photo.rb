class Photo < ActiveRecord::Base
  belongs_to :user, touch: true
end
