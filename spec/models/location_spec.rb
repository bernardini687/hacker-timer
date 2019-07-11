require 'rails_helper'

RSpec.describe Location, type: :model do
  it 'is accessible' do
    location = Location.create!(name: 'Circus')

    expect(player).to eq(Location.last)
  end
end
