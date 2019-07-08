class Game < ApplicationRecord
  validates :number_of_players, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 3,
    less_than_or_equal_to: 8
  }

  validates :location, presence: true

  has_many :players

  after_save :create_players

  private

  def create_players
    number_of_players.times { Player.create!(game: self) }
    players.first.update(info: 'spy')
    # players.where.not(info: 'spy').each { |p| p.update(info: location) }
  end
end
