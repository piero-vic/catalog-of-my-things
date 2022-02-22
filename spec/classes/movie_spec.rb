require_relative '../../classes/item'
require_relative '../../classes/movie'

describe Movie do
  context 'When created' do
    movie = Movie.new('2020-12-23')
    it 'should have a silet' do
      expect(movie).to be_kind_of(Item)
    end
  end

  describe '#can_be_archived?' do
    context 'when silent is true' do
      movie = Movie.new('2020-12-23')
      it 'should return true when silent' do
        expect(movie.can_be_archived?).to be true
      end
    end
  end
end
