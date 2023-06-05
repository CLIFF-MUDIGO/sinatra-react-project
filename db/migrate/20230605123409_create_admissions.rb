class CreateAdmissions < ActiveRecord::Migration[6.1]
  def change
    create_table :admissions do |t|
      t.belongs_to :student, null: false, foreign_key: true
      t.string :program
      t.date :date
      # Add more table columns as needed
      t.timestamps
    end
  end
end
