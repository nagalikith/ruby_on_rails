class CreateClubInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :club_infos, primary_key :clubinfo_id do |t|
      t.date :date
      t.integer :males
      t.integer :females
      t.integer :lowerage
      t.integer :upperage
      t.integer :disability
      t.integer :ethnicity
      t.integer :depravation
      t.integer :drugsandabs
      t.integer :neets
      t.integer :mentalhealth
      t.integer :volnum
      t.float :volhours
      t.integer :volachievetraining

      t.timestamps
    end
  end
end
