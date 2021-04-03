class CreateCaseStudies < ActiveRecord::Migration[6.0]
  def change
    create_table :case_studies, id: false, primary_key :casestudy_id do |t|
      t.date :date
      t.text :participant

      t.timestamps
    end
  end
end
