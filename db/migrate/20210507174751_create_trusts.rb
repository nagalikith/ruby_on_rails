class CreateTrusts < ActiveRecord::Migration[6.0]
  def change
    create_table :trusts do |t|
      t.date :datesubmitted
      t.date :thankdate

      t.timestamps
    end
  end
end
