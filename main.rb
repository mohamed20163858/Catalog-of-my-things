require_relative './option'
require_relative './save'
require_relative './load'
require_relative './menu'
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
  while number != '17'
    menu.display_options
    number = gets.chomp
    option.select_option(number)
  end
  # save data
  s.save_books(option.app.books)
  s.save_labels(option.app.labels)
end

main
