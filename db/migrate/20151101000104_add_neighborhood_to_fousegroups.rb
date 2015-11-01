class AddNeighborhoodToFousegroups < ActiveRecord::Migration
  def change
    add_reference :fousegroups, :neighborhood, index: true, foreign_key: true
  end
end
