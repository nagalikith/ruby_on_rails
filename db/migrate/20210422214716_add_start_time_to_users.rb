class AddStartTimeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :start_time, :datetime
  end
end
