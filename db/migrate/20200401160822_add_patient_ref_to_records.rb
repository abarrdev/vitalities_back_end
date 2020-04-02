class AddPatientRefToRecords < ActiveRecord::Migration[6.0]
  def change
    add_reference :records, :patient, null: false, foreign_key: true
  end
end
