class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.string :doctor_first_name
      t.string :doctor_last_name
      t.string :practice_name
      t.date :visit_date
      t.string :title
      t.text :notes

      t.timestamps
    end
  end
end
