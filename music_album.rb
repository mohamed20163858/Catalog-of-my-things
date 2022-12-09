require './item'

class MusicAlbum < Item

    attr_accessor :artist, :genre, :id, :on_spotify
    attr_reader :name
    
    def initialize(name, artist, genre, on_spotify)
        super(id, publish_date, archived)
        @artist = artist
        @genre = genre
        @name = name
        @id = Random.rand(1..1000)
        @on_spotify = on_spotify
    end
    
    private
    
    def can_be_archieved?
        return true if super && @on_spotify == true
        false
    end

end