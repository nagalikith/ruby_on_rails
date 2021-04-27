class Changeclubinfosback < ActiveRecord::Migration[6.0]
  def change
    change_column :club_infos, :date, :date, :null => true
    change_column :club_infos, :males, :integer, :null => true
    change_column :club_infos, :females, :integer, :null => true
    change_column :club_infos, :lowerage, :integer, :null => true
    change_column :club_infos, :upperage, :integer, :null => true
    change_column :club_infos, :disability, :integer, :null => true
    change_column :club_infos, :ethnicity, :integer, :null => true
    change_column :club_infos, :depravation, :integer, :null => true
    change_column :club_infos, :drugsandabs, :integer, :null => true
    change_column :club_infos, :neets, :integer, :null => true
    change_column :club_infos, :mentalhealth, :integer, :null => true
    change_column :club_infos, :volnum, :integer, :null => true
    change_column :club_infos, :volhours, :float, :null => true
    change_column :club_infos, :volachievetraining, :integer, :null => true
  end
end
