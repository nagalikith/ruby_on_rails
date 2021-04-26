class AddEndTimeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :end_time, :datetime
  end
end
