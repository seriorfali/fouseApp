class Fouse < ActiveRecord::Base
  belongs_to :floor
  belongs_to :user
end
