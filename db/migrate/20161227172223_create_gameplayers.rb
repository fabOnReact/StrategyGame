class CreateGameplayers < ActiveRecord::Migration[5.0]
  
  def up
    create_table :gameplayers do |t|
    	t.text :kingdom 
    	t.text :king
    	t.text :location
    	t.integer :Wood, :precision =>5 ,:scale => 0
    	t.text :qMetal
    	t.text :additionalDetails
    	t.timestamps
    end
  end
  
  def down
  	drop_table :gameplayers
  end

end
