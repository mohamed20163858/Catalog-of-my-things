require_relative './option'
require_relative './save'
require_relative './load'
require_relative './menu'
require_relative './music_album'
require_relative './genre'

# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/CyclomaticComplexity

def main
  number = 0
  menu = Menu.new
  puts 'Welcome to Catlog of my things app!'
  option = Options.new
  l = Load.new
  s = Save.new
  # load data
  option.app.books = File.exist?('books.json') ? l.load_books : []
  option.app.labels = File.exist?('labels.json') ? l.load_labels : []
  option.app.games = File.exist?('games.json') ? l.load_games : []
  option.app.authors = File.exist?('authors.json') ? l.load_authors : []
  option.app.music_albums = File.exist?('music_albums.json') ? l.load_music_albums : []
  option.app.genres = File.exist?('genres.json') ? l.load_genres : []

  while number != '17'
    menu.display_options
    number = gets.chomp
    option.select_option(number)
  end
  # save data
  s.save_books(option.app.books)
  s.save_labels(option.app.labels)
  s.save_games(option.app.games)
  s.save_authors(option.app.authors)
  s.save_music_albums(option.app.music_albums)
  s.save_genres(option.app.genres)
end

# rubocop:enable Metrics/MethodLength
# rubocop:enable Metrics/CyclomaticComplexity

main
