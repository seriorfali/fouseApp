class CreateFousegroups < ActiveRecord::Migration
  def change
    create_table :fousegroups do |t|
      t.string :name
      t.string :type
      t.string :style

      t.timestamps null: false
    end
  end
end
