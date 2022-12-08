require './item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at, :publish_date, :id
  attr_reader :name

  def initialize(name, multiplayer, last_played_at, publish_date, archived)
    super(id, archived, publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
    @publish_date = publish_date
    @name = name
    @id = Random.rand(1..1000)
  end

  private

  def can_be_archived?
    current_year = Time.new.year
    remaining_year = current_year - last_played_at
    super() && (remaining_year > 2)
  end
end
