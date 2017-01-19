class CreatePages < ActiveRecord::Migration[5.0]
  def up
    create_table :pages do |t|
    	t.string :name
      t.references :subject
    	t.integer :permalink
    	t.integer :position
    	t.boolean :visible
    	t.timestamps
    end
    #add_index(:pages, :subject_id)
    add_index(:pages, :permalink)      
  end
  def down
    #remove_index(:pages, :subject_id)	
    remove_index(:pages, :permalink)   
  	drop_table :pages
  end
end
