class Fuilding < ActiveRecord::Base
  belongs_to :fousegroup
  has_many :floors
  has_many :fouses, through: :floors
  belongs_to :user
  has_many :likes, as: :likable
end
