require_relative '../../classes/genre'

describe Genre do
  context 'When created' do
    genre = Genre.new('Heavy Metal')
    it 'should have a name' do
      expect(genre.name).to eql 'Heavy Metal'
    end

    it 'should have and empty items list' do
      expect(genre.items).to be_empty
    end
  end

  describe '#add_item' do
    genre = Genre.new('Trash metal')
    it 'should add the item to the items list' do
      item_mock = double
      allow(item_mock).to receive(:genre=)

      genre.add_item(item_mock)
      expect(genre.items.length).to be 1
    end
  end
end
