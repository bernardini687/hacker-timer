require 'rails_helper'

RSpec.describe Game, type: :model do
  it 'is accessible' do
    game = Game.create!(location: 'circus')

    expect(game).to eq(Game.last)
  end

  it 'has number_of_players and location columns' do
    columns = Game.column_names

    expect(columns).to include('id')
    expect(columns).to include('number_of_players')
    expect(columns).to include('location')
  end

  it 'has a number of players that defaults to 3' do
    expect(Game.new.number_of_players).to eq 3
  end

  it 'validates number_of_players and location columns' do
    expect(Game.new).not_to be_valid

    expect(Game.new(location: 'circus')).to be_valid

    expect(Game.new(location: 'circus', number_of_players: 2)).not_to be_valid
    expect(Game.new(location: 'circus', number_of_players: 9)).not_to be_valid
  end

  it 'generates the correct set-up of players' do
    game = Game.create!(number_of_players: 5, location: 'circus')

    expect(game.players.where(info: 'spy').count).to eq 1
    expect(game.number_of_players).to eq(game.players.count)
  end
end
