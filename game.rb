require './item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at, :publish_date, :id
  attr_reader :name

  def initialize(name, multiplayer, last_played_at, publish_date, archived)
    super(id, publish_date, archived)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
    @name = name
    @id = Random.rand(1..1000)
  end

  private

  def can_be_archieved?
    (year, month, day) = @last_played_at.split('-')
    year = year.to_i
    month = month.to_i
    day = day.to_i
    date = Time.new(year, month, day)
    remaining_year = (Time.now - date) / (365.25 * 24 * 60 * 60)
    super() && (remaining_year > 2)
  end
end
