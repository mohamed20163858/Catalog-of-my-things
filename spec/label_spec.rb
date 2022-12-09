require_relative '../label'
describe Label do
  context 'test Label class behaviour' do
    before(:all) do
      # arrange
      @id = 1
      @title = 'Gift'
      @color = 'red'
      @label = Label.new(@id, @title, @color)
    end
    it 'test the existence of label class' do
      expect(@label).to be_instance_of(Label) # assert
    end
    it 'test label has method add_item' do
      expect(@label).to respond_to(:add_item) # assert
    end
    it 'test label title attribute can be set' do
      # act
      @label.title = 'title_test'
      expect(@label.title).to eq 'title_test' # assert
    end
    it 'test label color attribute can be set' do
      # act
      @label.color = 'color_test'
      expect(@label.color).to eq 'color_test' # assert
    end
    it 'test add_item method behaviour' do
      # arrange
      item = double('item')
      allow(item).to receive(:label=)
      # act
      @label.add_item(item)
      expect(@label.items[0]).to eq item # assert
    end
  end
end
