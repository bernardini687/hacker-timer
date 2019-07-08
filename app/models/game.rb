class Game < ApplicationRecord
  validates :number_of_players, numericality: {
    only_integer: true,
    greater_or_equal_to: 3,
    less_than_or_equal_to: 8
  }

  # after_save :create_players

  # private

  # def create_players
  #   number_of_players.times { Player.new }
  # end
end
