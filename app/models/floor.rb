class Floor < ActiveRecord::Base
  belongs_to :fuilding
  has_many :fouses
end
