class CreateGames < ActiveRecord::Migration[5.0]
  def up
    create_table :games do |t|
      t.references :player
    	t.text :gameName, :limit => 15
    	t.integer :totalGold, :default => 4000
    	t.integer :totalWood, :default => 8000
    	t.integer :totalMetal, :default => 5000
    	t.integer :totalFood, :default => 15000
    	t.integer :nPlayers
    	t.timestamps
    end
    #add_index("games", "player_id")
  end

  def down
  	#remove_index("games", "player_id")
    drop_table :games
  end

end
