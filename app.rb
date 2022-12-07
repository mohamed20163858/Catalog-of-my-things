require_relative './label'
require_relative './book'
class App 
    attr_accessor :books, :labels
  def initialize 
    @books = []
    @labels = []
  end

  def add_a_book
    print('Publisher: ')
    publisher = gets.chomp
    print('Cover state: ')
    cover_state = gets.chomp
    print('Publish date: ')
    publish_date = gets.chomp
    print('Is it archived or not?(y/n)')
    archived = check_answer 
    index = @books.length
    book = Book.new(index, publish_date, archived, publisher, cover_state)
    @books.push(book)
    puts('Book created successfully')
  end

  def check_answer 
    archived = gets.chomp 
    while ( archived != 'y' && archived != 'n' )
      puts('Please input a valid answer!')
      print('Is it archived or not?(y/n)')
      archived = gets.chomp 
    end
  end 

  def add_a_label 
    print('Title: ')
    title = gets.chomp
    print('Color: ')
    color = gets.chomp
    index = @labels.length
    label = Label.new(index, title, color)
    @labels.push(label)
  end

  def list_books(mode: false)
    @books.each_with_index do |book, i|
      puts("#{mode ? "#{i}) " : ''}Publisher: \"#{book.publisher}\", Cover state: #{book.cover_state}, Publish date: #{book.publish_date}")
    end
  end

  def list_labels(mode: false)
    @labels.each_with_index do |label, i|
      puts("#{mode ? "#{i}) " : ''}Title: \"#{label.title}\", Cover state: #{label.color}")
    end
  end

  private :check_answer
end