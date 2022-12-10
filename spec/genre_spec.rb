require_relative '../genre'

describe Genre do
  context 'test Genre class behaviour' do
    before(:all) do
      # arrange
      @id = 1
      @name = 'Rock'
      @genre = Genre.new(@id, @name)
    end
    it 'test the existence of genre class' do
      expect(@genre).to be_instance_of(Genre) # assert
    end
    it 'test genre has method add_item' do
      expect(@genre).to respond_to(:add_item) # assert
    end
    it 'test genre name attribute can be set' do
      # act
      @genre.name = 'name_test'
      expect(@genre.name).to eq 'name_test' # assert
    end
  end
end
