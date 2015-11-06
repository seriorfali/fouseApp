class CreateFloors < ActiveRecord::Migration
  def change
    create_table :floors do |t|
      t.integer :number
      t.integer :gross_area
      t.integer :livable_area

      t.timestamps null: false
    end
  end
end
