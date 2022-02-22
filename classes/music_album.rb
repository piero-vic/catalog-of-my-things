require_relative 'item'

class MusicAlbum < Item
  attr_accessor :archive, :publish_date, :on_spotify

  def initialize(publish_date, on_spotify: true, archived: false)
    super(publish_date, archived: archived)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify
  end
end
