class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.integer :phone
      t.string :account_type
      t.string :first_name
      t.string :last_name
      t.string :name

      t.timestamps null: false
    end
  end
end
