class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.string :city
      t.string :country

      t.timestamps null: false
    end
  end
end
