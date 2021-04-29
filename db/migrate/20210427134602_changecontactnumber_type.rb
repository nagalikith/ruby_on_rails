class ChangecontactnumberType < ActiveRecord::Migration[6.0]
  def change
    change_column :volunteers, :contactnumber, :string
  end
end
