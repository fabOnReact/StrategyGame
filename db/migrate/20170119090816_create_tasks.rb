class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.references :developer
      t.references :customer
      t.string :description
      t.integer :developer_feedback
      t.integer :customer_feedback
      t.timestamps
    end
    add_index :tasks, ["developer_id", "customer_id"]
  end
end
