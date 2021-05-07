class AddAllGroupsToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :all_groups, :boolean
  end
end
