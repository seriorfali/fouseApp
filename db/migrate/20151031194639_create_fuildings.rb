class CreateFuildings < ActiveRecord::Migration
  def change
    create_table :fuildings do |t|
      t.string :name
      t.integer :floor_count
      t.integer :lot_area
      t.integer :gross_area
      t.integer :livable_area

      t.timestamps null: false
    end
  end
end
