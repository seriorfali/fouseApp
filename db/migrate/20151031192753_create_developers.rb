class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :name
      t.string :username
      t.string :password
      t.string :email
      t.integer :phone
      t.integer :number_of_fousegroups

      t.timestamps null: false
    end
  end
end
