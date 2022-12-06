# require './option'
# require './save'
# require './load'
require './menu'
def main
  number = 0
  menu = Menu.new
  # option = Options.new
  # l = Load.new
  # s = Save.new
  # load data
  # option.app.people = File.exist?('people.json') ? l.load_people : []
  # option.app.books = File.exist?('books.json') ? l.load_books : []
  # option.app.rentals = File.exist?('rentals.json') ? l.load_rentals(option.app) : []
  while number != '17'
    menu.display_options
    number = gets.chomp
    # option.select_option(number)
  end
  # save data
  # s.save_people(option.app.people)
  # s.save_books(option.app.books)
  # s.save_rentals(option.app.rentals)
end

main
