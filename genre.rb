class Genre
    def initialize(id, name, items)
        @id = id
        @name = name
        @items = []

    def add_item(item)
        @items.push(item)
        item.genre = self
    end