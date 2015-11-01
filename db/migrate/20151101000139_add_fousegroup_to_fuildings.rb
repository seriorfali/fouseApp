class AddFousegroupToFuildings < ActiveRecord::Migration
  def change
    add_reference :fuildings, :fousegroup, index: true, foreign_key: true
  end
end
