require 'rails_helper'

RSpec.describe Player, type: :model do
  it 'is accessible' do
    player = Player.create!
    expect(player).to eq(Player.last)
  end

  it 'has info column' do
    columns = Player.column_names
    expect(columns).to include('id')
    expect(columns).to include('info')
    expect(columns).to include('game_id')
  end
end
