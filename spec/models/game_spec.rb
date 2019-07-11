require 'rails_helper'

RSpec.describe Game, type: :model do
  it 'is accessible' do
    game = Game.create!

    expect(game).to eq(Game.last)
  end

  it 'has number_of_players and location columns' do
    columns = Game.column_names

    expect(columns).to include('number_of_players')
    expect(columns).to include('location')
  end

  it 'has a number of players that defaults to 4' do
    expect(Game.new.number_of_players).to eq 4
  end

  it 'has a location' do
    expect(Game.create!.location).not_to eq nil
  end

  it 'validates number_of_players and location columns' do
    expect(Game.new).to be_valid
    expect(Game.new(number_of_players: 3)).not_to be_valid
    expect(Game.new(number_of_players: 9)).not_to be_valid
  end

  it 'generates the correct set-up of players' do
    game = Game.create!(number_of_players: 5, location: 'circus')

    expect(game.players.where(info: 'spia').count).to eq 1
    expect(game.players.where(info: 'circus').count).to eq 4
  end
end
