require_relative '../../classes/book'
require_relative '../../classes/item'

describe Book do
  context 'When created' do
    it 'should be a kind of item Item' do
      book = Book.new('publisher1', 'good', '2012-04-02')
      expect(book).to be_a_kind_of(Item)
    end
  end
end
