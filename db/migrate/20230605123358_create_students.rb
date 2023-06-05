class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.string :email
      # Add more table columns as needed
      t.timestamps
    end
  end
end
