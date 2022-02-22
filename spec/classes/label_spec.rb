require_relative '../../classes/label'

describe Label do
  context 'When created' do
    label = Label.new('Label1', 'red')
    it 'should have a title' do
      expect(label.title).to eql 'Label1'
    end
    it 'should have a color' do
      expect(label.color).to eql 'red'
    end
    it 'should have and empty items list' do
      expect(label.items).to be_empty
    end
  end

  describe '#add_item' do
    label = Label.new('Label1', 'red')
    it 'should add the item to the items list' do
      # Mock Item object
      item_mock = double() 
      allow(item_mock).to receive(:label=)

      label.add_item(item_mock)
      expect(label.items[0]).to be item_mock
    end
  end
end
