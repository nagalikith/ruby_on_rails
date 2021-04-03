class AddClubsRefToCaseStudies < ActiveRecord::Migration[6.0]
  def change
    add_reference :case_studies, :club, null: false, foreign_key: true
  end
end
