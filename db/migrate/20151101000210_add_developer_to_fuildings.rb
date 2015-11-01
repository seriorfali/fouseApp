class AddDeveloperToFuildings < ActiveRecord::Migration
  def change
    add_reference :fuildings, :developer, index: true, foreign_key: true
  end
end
