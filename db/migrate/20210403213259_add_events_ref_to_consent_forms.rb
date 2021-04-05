class AddEventsRefToConsentForms < ActiveRecord::Migration[6.0]
  def change
    add_reference :consent_forms, :event, null: true, foreign_key: true
  end
end
