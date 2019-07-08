require 'rails_helper'

feature 'User creates a game' do
  scenario 'successfully' do
    visit root_path

    # click_on 'Inizia' || 'Begin'

    within '.settings' do
      4.times { click_link }
    end

    expect(page).to have_link('Gioca con 4 giocatori')
  end
end
