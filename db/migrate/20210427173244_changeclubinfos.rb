class Changeclubinfos < ActiveRecord::Migration[6.0]
  def change
    change_column :club_infos, :date, :date, :null => false
    change_column :club_infos, :males, :integer, :null => false
    change_column :club_infos, :females, :integer, :null => false
    change_column :club_infos, :lowerage, :integer, :null => false
    change_column :club_infos, :upperage, :integer, :null => false
    change_column :club_infos, :disability, :integer, :null => false
    change_column :club_infos, :ethnicity, :integer, :null => false
    change_column :club_infos, :depravation, :integer, :null => false
    change_column :club_infos, :drugsandabs, :integer, :null => false
    change_column :club_infos, :neets, :integer, :null => false
    change_column :club_infos, :mentalhealth, :integer, :null => false
    change_column :club_infos, :volnum, :integer, :null => false
    change_column :club_infos, :volhours, :float, :null => false
    change_column :club_infos, :volachievetraining, :integer, :null => false
  end
end
