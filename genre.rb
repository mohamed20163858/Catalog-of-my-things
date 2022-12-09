class Genre
    attr_accessor :name, :items

    def initialize(id, name, items)
        @id = id
        @name = name
        @items = []
    end

    def add_item(item)
        @items.push(item)
        item.genre = self
    end

end