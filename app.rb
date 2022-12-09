require_relative './label'
require_relative './book'
require_relative './game'
require_relative './author'
require_relative './music_album'
require_relative './genre'
require 'json'
require 'date'

class App
  attr_accessor :books, :labels, :games, :authors

  def initialize
    @books = []
    @labels = []
    @games = []
    @authors = []
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
    while archived != 'y' && archived != 'n'
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
      puts("#{mode ? "#{i}) " : ''}Publisher: \"#{book.publisher}\",
      Cover state: #{book.cover_state}, Publish date: #{book.publish_date}")
    end
  end

  def list_labels(mode: false)
    @labels.each_with_index do |label, i|
      puts("#{mode ? "#{i}) " : ''}Title: \"#{label.title}\", Cover state: #{label.color}")
    end
  end

  def add_a_game
    puts 'Enter the name of the game:'
    name = gets.chomp
    print 'Is the game multiplayer? (Y/N): '
    multiplayer = gets.chomp.downcase == 'y' || false
    print 'Enter Game Publish Date at: [enter date in YYYY-MM-DD format]: '
    publish_date = Date.parse(gets.chomp)
    print('Is it archived or not?(y/n)')
    archived = check_answer
    print 'When the game was last played at: [enter date in YYYY-MM-DD format]: '
    last_played_at = Date.parse(gets.chomp)
    game = Game.new(name, multiplayer, publish_date, last_played_at, archived)
    @games.push(game)
    puts 'Game added successfully'
    print 'Do you want to add an author? (Y/N): '
    add_author if gets.chomp.downcase == 'y'
  end

  def add_author
    print 'First name: '
    first_name = gets.chomp
    print 'Last name: '
    last_name = gets.chomp
    id = @id
    author = Author.new(id, first_name, last_name)
    @authors.push(author)
    puts 'Author added successfully'
  end

  def list_games
    @games.each do |game|
      puts "Game: #{game.name}"
      puts "Multiplayer: #{game.multiplayer}"
      puts "Last played at: #{game.last_played_at}"
      puts "Publish date: #{game.publish_date}"
      puts
    end
  end

  def list_authors
    @authors.each do |author|
      puts "Author: #{author.first_name} #{author.last_name}"
    end
  end

  private :check_answer
end
