require 'rails_helper'

RSpec.describe Game, type: :model do
  it 'is accessible' do
    game = Game.create!(number_of_players: 5)
    expect(game).to eq(Game.last)
  end

  it 'has number_of_players column' do
    columns = Game.column_names
    expect(columns).to include('id')
    expect(columns).to include('number_of_players')
    expect(columns).not_to include('user_id')
  end

  it 'has number_of_players column that defaults to 3' do
    expect(Game.new.number_of_players).to eq 3
  end

  it 'validates number_of_players' do
    expect(Game.new(number_of_players: 2)).not_to be_valid
    expect(Game.new(number_of_players: 9)).not_to be_valid
    expect(Game.new(number_of_players: 5)).to be_valid
    expect(Game.new).to be_valid
  end

  it 'generates the correct number of players' do
    game = Game.create!(number_of_players: 5)

    expect(game.number_of_players).to eq(game.players.count)
  end
end
