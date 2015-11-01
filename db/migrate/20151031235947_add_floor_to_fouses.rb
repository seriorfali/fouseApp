class AddFloorToFouses < ActiveRecord::Migration
  def change
    add_reference :fouses, :floor, index: true, foreign_key: true
  end
end
