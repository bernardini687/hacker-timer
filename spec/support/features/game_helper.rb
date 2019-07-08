module Features
  def create_game(number_of_players:)
    click_on 'Inizia'
    fill_in 'Numero di giocatori', with: number_of_players
    click_on 'Conferma'
  end

  def display_counter(text)
    have_css '.players-counter', text: text
  end
end
