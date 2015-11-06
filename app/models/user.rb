class User < ActiveRecord::Base
  has_many :photos, as: :imageable
  has_many :fouses
  has_many :fuildings
  has_and_belongs_to_many :neighborhoods
  has_many :likes
  has_many :fousegroups, through: :likes

  def password=(unencrypted_password)
    @password = unencrypted_password
    self.password_digest = BCrypt::Password.create(unencrypted_password)
  end

  def authenticate(unencrypted_password)
    if BCrypt::Password.new(self.password_digest) == unencrypted_password
      return self
    else
      return false
    end
  end
end
