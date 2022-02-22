require_relative './item.rb'

class Game < Item
  attr_reader :publish_date, :author
  def initialize(publish_date:, multiplayer:, last_played_at:, archived: false )
    super(publish_date, archived: archived)
    @multiplayer = multiplayer
    @last_played_at = Date.parse(last_played_at)
  end
end