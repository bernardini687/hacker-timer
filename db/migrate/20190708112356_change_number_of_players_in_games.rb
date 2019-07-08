class ChangeNumberOfPlayersInGames < ActiveRecord::Migration[5.2]
  def change
    change_column :games, :number_of_players, :integer, null: false, default: 3
  end
end
