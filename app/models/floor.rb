class Floor < ActiveRecord::Base
  has_many :fouses
  belongs_to :fuilding
end
