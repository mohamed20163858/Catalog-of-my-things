require_relative '../music_album'

describe MusicAlbum do
  context 'test MusicAlbum class behaviour' do
    before(:all) do
      @id = 1
      @name = 'The Dark Side of the Moon'
      @publish_date = '2020-09-01'
      @artist = 'Omar'
      @genre = 'Rock'
      @archived = true
      @on_spotify = true
      @music_album = MusicAlbum.new(@id, @name, @artist, @genre, @publish_date, @archived, @on_spotify)
    end
    it 'test the existence of music_album class' do
      expect(@music_album).to be_instance_of(MusicAlbum) # assert
    end
    it 'test music_album is class is a child of item class' do
      expect(@music_album).to be_kind_of(Item) # assert
    end
  end
end

describe MusicAlbum do
  # rubocop:disable Metrics/BlockLength
  context 'test music_album move_to_archive method  behaviour' do
    before(:all) do
      @id = 1
      @name = 'The Dark Side of the Moon'
      @artist = 'Omar'
      @genre = 'Rock'
      @archived = false
    end
    it 'test the move_to_archive by giving an input the age of it < 10 years
        and archived = false and on_spotify = true ' do
      # arrange
      publish_date = '2013-12-13'
      on_spotify = true
      music_album = MusicAlbum.new(@id, @name, @artist, @genre, publish_date, @archived, on_spotify)
      result = music_album.move_to_archive
      expect(result).to be nil
    end
    it 'test the move_to_archive by giving an input the age of it > 10 years
        and archived = false and on_spotify = true ' do
      # arrange
      publish_date = '2010-12-13'
      on_spotify = true
      music_album = MusicAlbum.new(@id, @name, @artist, @genre, publish_date, @archived, on_spotify)
      result = music_album.move_to_archive
      expect(result).to be true
    end
    it 'test the move_to_archive by giving an input the age of it < 10 years
        and archived = false and on_spotify = false ' do
      # arrange
      publish_date = '2013-12-13'
      on_spotify = false
      music_album = MusicAlbum.new(@id, @name, @artist, @genre, publish_date, @archived, on_spotify)
      result = music_album.move_to_archive
      expect(result).to be nil
    end
  end
  # rubocop:enable Metrics/BlockLength
end
