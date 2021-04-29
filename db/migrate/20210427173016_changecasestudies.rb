class Changecasestudies < ActiveRecord::Migration[6.0]
  def change
    change_column :case_studies, :date, :date, :null => false
    change_column :case_studies, :participant, :string, :null => false
    change_column :case_studies, :comment, :text, :null => false
  end
end
