require 'rails_helper'

RSpec.describe Player, type: :model do
  it 'is accessible' do
    game = Game.create!
    player = Player.create!(game: game)

    expect(player).to eq(Player.last)
  end

  it 'has info and game_id columns' do
    columns = Player.column_names

    expect(columns).to include('info')
    expect(columns).to include('game_id')
  end

  it 'validates game presence' do
    game = Game.create!

    expect(Player.new).not_to be_valid
    expect(Player.new(game: game)).to be_valid
  end
end
