class CreateCommercials < ActiveRecord::Migration[6.0]
  def change
    create_table :commercials do |t|
      t.date :dateawarded

      t.timestamps
    end
  end
end
