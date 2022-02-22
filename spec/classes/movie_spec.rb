require_relative '../../classes/item'
require_relative '../../classes/movie'

describe Movie do
  context 'When created' do
    movie = Movie.new('2020-12-23')
    it 'should have a silet' do
      expect(movie).to be_kind_of(Item)
    end
  end

  #   describe '#can_be_archived?' do
  #   context 'when silent' do
  #     movie = Movie.new('true', '2020-09-09')

  #     it 'should return true if silent is true' do
  #       expect(movie.can_be_archived?).to be true
  #     end
  #   end
  # end
end
