require './author'

describe Author do
  context 'test Author class behaviour' do
    before(:all) do
      @id = 0
      @first_name = 'Jennipher'
      @last_name = 'Buttony'
      @author = Author.new(@id, @first_name, @last_name)
    end

    it 'test the existence of Author class' do
      expect(@author).to be_instance_of(Author)
    end

    it 'test first name' do
      expect(@author.first_name).to eq('Jennipher')
    end

    it 'test author has method add_item' do
      expect(@author).to respond_to(:add_item)
    end

    it 'test add_item method behaviour' do
      data = double('data')
      allow(data).to receive(:author=)
      @author.add_item(data)
      expect(@author.items[0]).to eq data
    end
  end
end
