class CreateAlliances < ActiveRecord::Migration[5.0]
  def change
    create_table :alliances do |t|
      t.string :name
      t.string :symbol
      t.timestamps
    end
  end
end
