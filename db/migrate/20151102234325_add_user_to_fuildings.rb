class AddUserToFuildings < ActiveRecord::Migration
  def change
    add_reference :fuildings, :user, index: true, foreign_key: true
  end
end
