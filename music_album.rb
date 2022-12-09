require './item'

class MusicAlbum < Item

    attr_accessor :artist, :genre, :id, :on_spotify
    attr_reader :name
    
    def initialize(id, genre, author, source, label, publish_date, archived,  on_spotify)
        super(id, genre, author, source, label, publish_date, archived)
        @on_spotify = on_spotify
    end
    
    private
    
    def can_be_archieved?
        return true if super && @on_spotify == true
        false
    end

end