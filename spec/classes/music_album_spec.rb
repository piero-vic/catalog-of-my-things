require_relative '../../classes/music_album'
require 'date'

describe MusicAlbum do
  context 'When created' do
    album = MusicAlbum.new('Back in black', 'AC/DC', true, '1981-12-04')
    it 'should have a date' do
      expect(album.publish_date).to be_instance_of(Date)
    end
  end

  context 'When created' do
    album = MusicAlbum.new('The number of the beast', 'Iron Maiden', false, '1983-02-04')
    it 'should have an album name' do
      expect(album.album_name) == 'The number of the beast'
    end
  end
  context 'When created' do
    album = MusicAlbum.new('Painkiller', 'Judas Priest', true, '1990-04-08')
    it 'should have an artist name' do
      expect(album.artist) == 'Judas Priest'
    end
  end
end

describe '#can_be_archived?' do
  context 'when called then' do
    album = MusicAlbum.new('The Count of Tuscany', 'Dream Theater', true, '2012-02-22')

    it 'should return true if the publish_date is older than 10 and on_spotify is true' do
      expect(album.can_be_archived?).to be true
    end
  end
end
