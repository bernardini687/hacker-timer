class AddInfoToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :info, :string
  end
end
