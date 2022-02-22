require_relative '../../classes/author'

describe Author do
  author = Author.new('Jane', 'Doe')
  context 'When Created' do
    it 'should have first_name' do
      expect(author.first_name).to eq 'Jane'
    end
    it 'should have last_name' do
      expect(author.last_name).to eq 'Doe'
    end
    it 'should have an empty items array' do
      expect(author.items).to be_empty
    end
  end

  describe '#add_item' do
    it 'should add the item to items array' do
      item_mock = double('Item')
      allow(item_mock).to receive(:author=)
      author.add_item(item_mock)
      expect(author.items).to include(item_mock)
    end
  end
end
