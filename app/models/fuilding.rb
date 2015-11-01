class Fuilding < ActiveRecord::Base
  belongs_to :fousegroup
  has_many :floors
  has_many :fouses, through: :floors
  belongs_to :developer
end
