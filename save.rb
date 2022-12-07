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

end
