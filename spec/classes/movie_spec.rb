require_relative '../../classes/item'
require_relative '../../classes/movie'

describe Movie do
  context 'When created' do
    movie = Movie.new('2020-12-23')
    it 'should be a king of item' do
      expect(movie).to be_kind_of(Item)
    end
  end

  describe '#can_be_archived?' do
    context 'when silent is false' do
      movie = Movie.new('2020-05-05')
      it 'should return false when silent' do
        expect(movie.can_be_archived?).to be false
      end
    end
  end
end
