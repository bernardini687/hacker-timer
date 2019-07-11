# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Clearing database...'

Location.destroy_all
Player.destroy_all
Game.destroy_all

puts 'Creating locations...'

[
  'spiaggia', 'teatro', 'circo', 'banca', 'terme', 'hotel', 'ristorante',
  'supermercato', 'stazione ferroviaria', 'aeroporto', 'ospedale', 'scuola',
  'stazione militare', 'università', 'aereo', 'treno', 'sottomarino',
  'chiesa', 'festa aziendale', 'festa campestre', 'stazione spaziale',
  'nave pirata', 'foresta'
].each do |name|
  Location.create! name: name
end

puts "Done. There are now #{Location.count} locations!"
