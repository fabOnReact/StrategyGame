class Players < ActiveRecord::Migration[5.0]
  
  def up
  	rename_table('gameplayers', 'players')
  	add_column('players', 'qFood', :integer, :precision => 5, :scale => 0, :after => :qMetal)
  	rename_column('players', 'Wood', 'qWood')
  	remove_column('players', 'additionalDetails')
  	change_column('players', 'qMetal', :integer, :precision => 5, :scale =>0)
  end

  def down  	
  	change_column('players', 'qMetal', :text)
  	add_column('players', 'additionalDetails', :text, :after => :qMetal)
	rename_column('players', 'qWood', 'Wood')
  	remove_column('players', 'qFood')
  	rename_table('players', 'gameplayers')
  end

end
