require_relative '../../classes/book'
require_relative '../../classes/item'

describe Book do
  context 'When created' do
    book = Book.new('publisher1', 'good', '2012-04-02')
    it 'should be a kind of item Item' do
      expect(book).to be_a_kind_of(Item)
    end

    it 'should have publisher and cover_state' do
      expect(book.publisher).to eql 'publisher1'
      expect(book.cover_state).to eql 'good'
    end
  end

  describe '#can_be_archived?' do
    context 'when cover_state is bad' do
      book = Book.new('publisher1', 'bad', '2020-04-02')
      it 'should return true' do
        expect(book.can_be_archived?).to be true
      end
    end

    context 'when cover_state is good' do
      book = Book.new('publisher1', 'good', '2020-04-02')
      it 'should return false' do
        expect(book.can_be_archived?).to be false
      end
    end

    context 'when cover_state is good but book is older' do
      book = Book.new('publisher1', 'good', '2000-04-02')
      it 'should return true' do
        expect(book.can_be_archived?).to be true
      end
    end
  end
end
