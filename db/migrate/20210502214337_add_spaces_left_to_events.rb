class AddSpacesLeftToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :spaces_left, :integer
  end
end
