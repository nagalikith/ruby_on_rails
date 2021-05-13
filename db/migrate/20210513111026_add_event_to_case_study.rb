class AddEventToCaseStudy < ActiveRecord::Migration[6.0]
  def change
    add_column :case_studies, :event, :string
  end
end
