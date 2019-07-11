require 'rails_helper'

RSpec.describe Location, type: :model do
  it 'is accessible' do
    location = Location.create!(name: 'circus')

    expect(location).to eq(Location.last)
  end

  it 'has name column' do
    columns = Location.column_names

    expect(columns).to include('name')
  end

  it 'validates name presence' do
    expect(Location.new).not_to be_valid
    expect(Location.new(name: 'circus')).to be_valid
  end
end
