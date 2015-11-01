class AddUserToFouses < ActiveRecord::Migration
  def change
    add_reference :fouses, :user, index: true, foreign_key: true
  end
end
