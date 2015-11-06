class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :likable, polymorphic: true, index: true
      t.timestamps null: false
    end
  end
end
