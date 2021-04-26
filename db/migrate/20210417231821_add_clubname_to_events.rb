class AddClubnameToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :clubname, :string
  end
end
