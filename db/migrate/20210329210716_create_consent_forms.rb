class CreateConsentForms < ActiveRecord::Migration[6.0]
  def change
    create_table :consent_forms, primary_key :form_id do |t|
      t.string :participantname

      t.timestamps
    end
  end
end
