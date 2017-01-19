class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.references :developer
      t.references :customer
      t.string :description
      t.integer :developer_feedback
      t.integer :customer_feedback
      t.timestamps
    end
    add_index :projects, ["developer_id", "customer_id"]
  end
end
