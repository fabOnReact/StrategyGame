class CreateAlliancesPlayersJoin < ActiveRecord::Migration[5.0]
  def up
    create_table :alliances_players, :id => false do |t|
    	t.references "alliance"
    	t.references "player"
    end
    #add_index :admin_users_pages, ["admin_user_id", "page_id"]
  end
  def down
  	drop_table :alliances_players
  end
end
