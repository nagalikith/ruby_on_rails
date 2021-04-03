class AddEventsRefToCaseStudies < ActiveRecord::Migration[6.0]
  def change
    add_reference :case_studies, :event, null: false, foreign_key: true
  end
end
