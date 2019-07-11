class Game < ApplicationRecord
  has_many :players, dependent: :delete_all
  has_many :locations, dependent: :delete_all

  validates :number_of_players, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 4,
    less_than_or_equal_to: 8
  }

  before_save :set_location
  after_save :create_players

  private

  def set_location
    self.location ||= locations.sample
  end

  def create_players
    number_of_players.times do |number|
      Player.create!(game: self, info: location, number: number + 1)
    end
    players.sample.update!(info: 'spia')
  end
end
