class CreateSubjects < ActiveRecord::Migration[5.0]
  
  def up
    create_table :subjects do |t|
    	t.string :name
    	t.integer :position
    	t.boolean :visible
    	t.timestamps
    end
    add_index(:subjects, :name)
  end

  def down
  	remove_index(:subjects, :name)
  	drop_table :subjects
  end

end
