require_relative './book'
require_relative './label'
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
end
