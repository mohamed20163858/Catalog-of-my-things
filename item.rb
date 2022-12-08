class Item
  attr_reader :id
  attr_accessor :genre, :author, :source, :label, :publish_date, :name

  def initialize(id, publish_date, archived)
    @id = id
    @name = name
    @publish_date = publish_date
    @archived = archived
  end

  def add_genre(genre)
    @genre = genre
    genre.items.push(self) unless genre.items.include?(self)
  end

  def add_author(author)
    @author = author
    author.items.push(self) unless author.items.include?(self)
  end

  def add_source(source)
    @source = source
    source.items.push(self) unless source.items.include?(self)
  end

  def add_label(label)
    @label = label
    label.items.push(self) unless label.items.include?(self)
  end

  def can_be_archieved?
    (year, month, day) = @publish_date.split('-')
    year = year.to_i
    month = month.to_i
    day = day.to_i
    date = Time.new(year, month, day)
    item_age = (Time.now - date) / (365.25 * 24 * 60 * 60)
    item_age > 10
  end

  def move_to_archive
    @archived = true if can_be_archieved?
  end
  private :can_be_archieved?
end
