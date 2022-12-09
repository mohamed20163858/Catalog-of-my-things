require_relative './app'

class Options
  attr_accessor :app

  def initialize
    @app = App.new
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  # rubocop:disable Metrics/MethodLength
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
    when '11'
      @app.add_music_album
    when '13'
      @app.add_genre
    when '2'
      @app.list_music_albums
    when '5'
      @app.list_genres
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity
  # rubocop:enable Metrics/MethodLength
end
