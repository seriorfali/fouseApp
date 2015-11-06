class ChangeTypeToCommunityType < ActiveRecord::Migration
  def change
    rename_column :fousegroups, :type, :community_type
  end
end
