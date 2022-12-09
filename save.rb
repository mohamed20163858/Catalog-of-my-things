require 'json'

class Save
  def save_books(data)
    books = []
    data.each do |book|
      details = {}
      details['publisher'] = book.publisher
      details['cover_state'] = book.cover_state
      details['publish_date'] = book.publish_date
      books.push(details)
    end
    File.write('books.json', JSON.generate(books))
  end

  def save_labels(data)
    labels = []
    data.each do |label|
      details = {}
      details['title'] = label.title
      details['color'] = label.color
      labels.push(details)
    end
    File.write('labels.json', JSON.generate(labels))
  end

  def save_games(data)
    games = []
    data.each_with_index do |game, index|
      details = {}
      details['id'] = index
      details['name'] = game.name
      details['multiplayer'] = game.multiplayer
      details['last_played_at'] = game.last_played_at
      details['publish_date'] = game.publish_date
      games.push(details)
    end
    File.write('games.json', JSON.generate(games))
  end

  def save_authors(data)
    authors = []
    data.each_with_index do |author, index|
      details = {}
      details['id'] = index
      details['first_name'] = author.first_name
      details['last_name'] = author.last_name
      authors.push(details)
    end
    File.write('authors.json', JSON.generate(authors))
  end

  def save_music_albums(data)
    albums = []
    data.each_with_index do |album, index|
      details = {}
      details['id'] = index
      details['name'] = album.name
      details['artist'] = album.artist
      details['genre'] = album.genre
      details['on_spotify'] = album.on_spotify
      albums.push(details)
    end
    File.write('music_albums.json', JSON.generate(albums))
  end

  def save_items(data)
    items = []
    data.each_with_index do |item, index|
      details = {}
      details['id'] = index
      details['name'] = item.name
      details['publish_date'] = item.publish_date
      details['archived'] = item.archived
      items.push(details)
    end
    File.write('items.json', JSON.generate(items))
  end
end
