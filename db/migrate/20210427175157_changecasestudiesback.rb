class Changecasestudiesback < ActiveRecord::Migration[6.0]
  def change
    change_column :case_studies, :date, :date, :null => true
    change_column :case_studies, :participant, :string, :null => true
    change_column :case_studies, :comment, :text, :null => true
  end
end
