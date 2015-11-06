class AddFuildingToFloors < ActiveRecord::Migration
  def change
    add_reference :floors, :fuilding, index: true, foreign_key: true
  end
end
