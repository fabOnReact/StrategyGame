class CreateDevelopers < ActiveRecord::Migration[5.0]
  def change
    create_table :developers do |t|
      t.text :firstname
      t.text :surname
      t.text :role
      t.integer :experience
      t.timestamps
    end
  end
end
