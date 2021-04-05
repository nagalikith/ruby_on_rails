class CreateCaseStudies < ActiveRecord::Migration[6.0]
  def change
    create_table :case_studies, primary_key :casestudy_id do |t|
      t.date :date
      t.string :participant
      t.text :comment

      t.timestamps
    end
  end
end
