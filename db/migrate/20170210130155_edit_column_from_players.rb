class EditColumnFromPlayers < ActiveRecord::Migration[5.0]
  def change
  	add_column :players, :location_id, :integer
  end
end
