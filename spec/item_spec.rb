require_relative '../item'
describe Item do
  context 'test Item class behaviour' do
    before(:all) do
      @id = 1
      @publish_date = '2020-09-01'
      @archived = true
      @item = Item.new(@id, @publish_date, @archived) # arrange
    end
    it 'test the existence of item class' do
      expect(@item).to be_instance_of(Item) # assert
    end
    it 'test the existence of method move_to_archive' do
      expect(@item).to respond_to(:move_to_archive) # assert
    end
    it 'test the existence of method add_genre' do
      expect(@item).to respond_to(:add_genre) # assert
    end
    it 'test the existence of method add_author' do
      expect(@item).to respond_to(:add_author) # assert
    end
    it 'test the existence of method add_source' do
      expect(@item).to respond_to(:add_source) # assert
    end
    it 'test the existence of method add_label' do
      expect(@item).to respond_to(:add_label) # assert
    end
  end
end

describe Item do
  context 'test item move_to_archive method  behaviour' do
    before(:all) do
      @id = 1
      @archived = false
    end
    it 'test the move_to_archive by giving an input the age of it < 10 years' do
      # arrange
      publish_date = '2013-12-13'
      item = Item.new(@id, publish_date, @archived)
      result = item.move_to_archive
      expect(result).to be nil
    end
    it 'test the move_to_archive by giving an input the age of it > 10 years' do
      # arrange
      publish_date = '2012-12-07'
      item = Item.new(@id, publish_date, @archived)
      result = item.move_to_archive
      expect(result).to be true
    end
    it 'test the move_to_archive by giving an wrong date format' do
      # arrange
      publish_date = '2012-15-07'
      item = Item.new(@id, publish_date, @archived)
      expect { item.move_to_archive }.to raise_error(ArgumentError)
    end
  end
end

describe Item do
  context 'test setter methods  behaviour' do
    before(:all) do
      @id = 1
      @publish_date = '2020-09-01'
      @archived = true
      @item = Item.new(@id, @publish_date, @archived) # arrange
    end
    it 'test the effect of add_genre method to genre attribute' do
      # arrange
      genre = double('genre')
      allow(genre).to receive(:items) { [] }
      # act
      @item.add_genre(genre)
      # assert
      expect(@item.genre).to eq genre
    end
    it 'test the effect of add_author method to author attribute' do
      # arrange
      author = double('author')
      allow(author).to receive(:items) { [] }
      # act
      @item.add_author(author)
      # assert
      expect(@item.author).to eq author
    end
    it 'test the effect of add_source method to source attribute' do
      # arrange
      source = double('source')
      allow(source).to receive(:items) { [] }
      # act
      @item.add_source(source)
      # assert
      expect(@item.source).to eq source
    end
    it 'test the effect of add_label method to label attribute' do
      # arrange
      label = double('label')
      allow(label).to receive(:items) { [] }
      # act
      @item.add_label(label)
      # assert
      expect(@item.label).to eq label
    end
  end
end
