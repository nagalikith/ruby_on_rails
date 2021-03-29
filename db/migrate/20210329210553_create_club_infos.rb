class CreateClubInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :club_infos do |t|
      t.integer :date
      t.integer :males
      t.integer :females
      t.integer :lowerage
      t.integer :upperage
      t.integer :disability
      t.integer :ethnicity
      t.integer :depravation
      t.integer :drugsandabs
      t.integer :neets
      t.integer :volnum
      t.integer :volhours
      t.integer :volachievetraining

      t.timestamps
    end
  end
end
