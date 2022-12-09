require './item'

class MusicAlbum < Item

    attr_accessor :artist, :genre, :id, :on_spotify
    attr_reader :name
    
    def initialize(id, name, artist, genre, publish_date, archived, on_spotify)
        super(id, publish_date, archived)
        @on_spotify = on_spotify
        @name = name
        @artist = artist
        @genre = genre
    end
    
    private
    
    def can_be_archieved?
        return true if super && @on_spotify == true
        false
    end

end