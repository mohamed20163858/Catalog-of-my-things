require_relative '../book'

describe Book do
  context 'test Book class behaviour' do
    before(:all) do
      @id = 1
      @publish_date = '2020-09-01'
      @archived = true
      @publisher = 'Mohamed Saleh'
      @cover_state = 'Good'
      @book = Book.new(@id, @publish_date, @archived, @publisher, @cover_state) # arrange
    end
    it 'test the existence of book class' do
      expect(@book).to be_instance_of(Book) # assert
    end
    it 'test book is class is a child of item class' do
      expect(@book).to be_kind_of(Item) # assert
    end
  end
end

describe Book do
  context 'test book move_to_archive method  behaviour' do
    before(:all) do
      @id = 1
      @publisher = 'Mohamed Saleh'
      @archived = false
    end
    it 'test the move_to_archive by giving an input the age of it < 10 years
    and archived = false and cover_state = good ' do
      # arrange
      publish_date = '2013-12-13'
      cover_state = 'good'
      book = Book.new(@id, publish_date, @archived, @publisher, cover_state)
      result = book.move_to_archive
      expect(result).to be nil
    end
    it 'test the move_to_archive by giving an input the age of it > 10 years
    and archived = false and cover_state = good ' do
      # arrange
      publish_date = '2010-12-13'
      cover_state = 'good'
      book = Book.new(@id, publish_date, @archived, @publisher, cover_state)
      result = book.move_to_archive
      expect(result).to be true
    end
    it 'test the move_to_archive by giving an input the age of it < 10 years
    and archived = false and cover_state = bad ' do
      # arrange
      publish_date = '2013-12-13'
      cover_state = 'bad'
      book = Book.new(@id, publish_date, @archived, @publisher, cover_state)
      result = book.move_to_archive
      expect(result).to be true
    end
  end
end
