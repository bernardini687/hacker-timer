class Game < ApplicationRecord
  has_many :players, dependent: :delete_all

  validates :number_of_players, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 4,
    less_than_or_equal_to: 8
  }

  after_save :create_players

  def fetch_location!(locations)
    random_location = Location.where(id: locations).sample || Location.all.sample
    set_location(random_location.name)
  end

  private

  def set_location(random_location)
    self.location ||= random_location
  end

  def create_players
    number_of_players.times do |number|
      Player.create!(game: self, info: location, number: number + 1)
    end
    players.sample.update!(info: 'spia')
  end
end
