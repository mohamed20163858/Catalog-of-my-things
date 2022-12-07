require_relative './app'

class Options
  attr_accessor :app

  def initialize
    @app = App.new
  end

  def select_option(number)
    case number
    when '1'
      @app.list_books
    when '6'
      @app.list_labels
    when '9'
      @app.add_a_book
    when '14'
      @app.add_a_label
    end
  end
end
