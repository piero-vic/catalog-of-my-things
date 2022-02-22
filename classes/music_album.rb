require_relative 'item'

class MusicAlbum < Item
  attr_accessor :archive, :publish_date, :on_spotify, :album_name, :artist

  def initialize(album_name, artist, on_spotify, publish_date, archived: false)
    super(publish_date, archived: archived)
    @album_name = album_name
    @artist = artist
    @on_spotify = on_spotify
  end

  def can_be_archived?
    ((Date.today - @publish_date).to_i / 365.00) > 10.00 && @on_spotify
  end
end
