require_relative './book'
require_relative './label'
require_relative './game'
require_relative './author'

class Load
  def load_books
    books = []
    data = JSON.parse(File.read('books.json'))
    data.each_with_index do |book, i|
      publisher = book['publisher']
      cover_state = book['cover_state']
      publish_date = book['publish_date']
      holder = Book.new(i, publish_date, false, publisher, cover_state)
      holder.move_to_archive
      books.push(holder)
    end
    books
  end

  def load_labels
    labels = []
    data = JSON.parse(File.read('labels.json'))
    data.each_with_index do |label, i|
      title = label['title']
      color = label['color']
      labels.push(Label.new(i, title, color))
    end
    labels
  end

  def load_games
    games = []
    data = JSON.parse(File.read('games.json'))
    data.each do |game|
      name = game['name']
      multiplayer = game['multiplayer']
      last_played_at = game['last_played_at']
      publish_date = game['publish_date']
      archived = game['archived']
      holder = Game.new(name, multiplayer, last_played_at, publish_date, archived)
      holder.move_to_archive
      games.push(holder)
    end
    games
  end

  def load_authors
    authors = []
    data = JSON.parse(File.read('authors.json'))
    data.each_with_index do |author, index|
      first_name = author['first_name']
      last_name = author['last_name']
      authors.push(Author.new(index, first_name, last_name))
    end
    authors
  end
end
