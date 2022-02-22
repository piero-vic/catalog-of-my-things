# require_relative '../../classes/item'
require_relative '../../classes/source'

describe Source do
  context 'When created' do
    source = Source.new('Emma')
    it 'should have a name' do
      expect(source.name).to eql 'Emma'
    end

    it 'should have and empty items list' do
      expect(source.items).to be_empty
    end
  end

  
  describe '#add_item' do
    context 'when added' do
      source = Source.new('Emma')
      it 'should add an item to items' do
        item_mock = double('movie')
        allow(item_mock).to receive_message_chain(:source=)
        source.add_item(item_mock)
        expect(source.items).to include item_mock
      end
    end
  end
end
