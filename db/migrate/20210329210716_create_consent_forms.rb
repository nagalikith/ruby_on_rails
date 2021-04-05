class CreateConsentForms < ActiveRecord::Migration[6.0]
  def change
    create_table :consent_forms do |t|
      t.string :participantname

      t.timestamps
    end
  end
end
