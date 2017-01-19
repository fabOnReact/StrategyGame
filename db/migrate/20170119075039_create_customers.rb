class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.text :firstname
      t.text :surname
      t.text :city
      t.text :project
      t.text :seeking_for
      t.timestamps
    end
  end
end
