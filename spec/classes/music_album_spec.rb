require_relative '../../classes/music_album'
require 'date'

describe MusicAlbum do
  context 'When created' do
    album = MusicAlbum.new('1981-12-04')
    it 'should have a date' do
      expect(album.publish_date).to be_instance_of(Date)
    end
  end

  describe '#can_be_archived?' do
    context 'when called then' do
      album = MusicAlbum.new('2008-02-22')

      it 'should return true if the publish_date is older than 10 and on_spotify is true' do
        expect(album.can_be_archived?).to be true
      end
    end
  end
end
