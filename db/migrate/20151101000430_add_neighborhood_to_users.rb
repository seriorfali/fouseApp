class AddNeighborhoodToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :neighborhood, index: true, foreign_key: true
  end
end
