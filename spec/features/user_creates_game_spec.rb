require 'rails_helper'

feature 'User creates a game' do
  scenario 'successfully' do
    visit root_path

    create_game(number_of_players: 5)

    expect(page).to display_counter('1/5')
  end
end
