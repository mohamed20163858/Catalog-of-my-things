require_relative './item'
class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(id, publish_date, archived, publisher, cover_state)
    super(id, publish_date, archived)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archieved?
    return true if super || @cover_state == 'bad'

    false
  end
  private :can_be_archieved?
end
