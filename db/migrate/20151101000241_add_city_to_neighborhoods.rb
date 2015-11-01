class AddCityToNeighborhoods < ActiveRecord::Migration
  def change
    add_reference :neighborhoods, :city, index: true, foreign_key: true
  end
end
