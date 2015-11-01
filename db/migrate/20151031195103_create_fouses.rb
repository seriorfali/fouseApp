class CreateFouses < ActiveRecord::Migration
  def change
    create_table :fouses do |t|
      t.text :name
      t.integer :number_of_rooms
      t.integer :number_of_bathrooms
      t.integer :area

      t.timestamps null: false
    end
  end
end
