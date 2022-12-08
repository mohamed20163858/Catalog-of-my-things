require_relative './app'

class Options
  attr_accessor :app

  def initialize
    @app = App.new
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def select_option(number)
    case number
    when '1'
      @app.list_books
    when '4'
      @app.list_games
    when '6'
      @app.list_labels
    when '7'
      @app.list_authors
    when '9'
      @app.add_a_book
    when '12'
      @app.add_a_game
    when '14'
      @app.add_a_label
    when '15'
      @app.add_author
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity
end
