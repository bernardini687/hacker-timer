class Game < ApplicationRecord
  has_many :players
  has_many :locations

  validates :number_of_players, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 4,
    less_than_or_equal_to: 8
  }

  before_save :set_location
  after_save :create_players

# [
#   'spiaggia', 'teatro', 'circo', 'banca', 'terme', 'hotel', 'ristorante',
#   'supermercato', 'stazione ferroviaria', 'aeroporto', 'ospedale', 'scuola',
#   'stazione militare', 'università', 'aereo', 'treno', 'sottomarino',
#   'chiesa', 'festa aziendale', 'festa campestre', 'stazione spaziale',
#   'nave pirata', 'base di ricerca al polo sud'
# ]

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
