require_relative './book'
require_relative './label'
require_relative './game'
require_relative './author'
require_relative './music_album'
require_relative './genre'

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

  def load_music_albums
    albums = []
    data = JSON.parse(File.read('music_albums.json'))
    data.each_with_index do |album, i|
      name = album['name']
      artist = album['artist']
      genre = album['genre']
      on_spotify = album['on_spotify']
      albums.push(MusicAlbum.new(i, name, artist, genre, on_spotify))
    end
    albums
  end

  def load_genres
    genres = []
    data = JSON.parse(File.read('genres.json'))
    data.each_with_index do |genre, i|
      name = genre['name']
      genres.push(Genre.new(i, name, []))
    end
    genres
  end
end
