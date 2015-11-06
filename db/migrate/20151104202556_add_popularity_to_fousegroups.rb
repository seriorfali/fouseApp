class AddPopularityToFousegroups < ActiveRecord::Migration
  def change
    add_column :fousegroups, :popularity, :integer
  end
end
