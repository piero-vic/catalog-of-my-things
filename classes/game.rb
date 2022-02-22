require_relative './item'

class Game < Item
  attr_reader :multiplayer, :last_played_at

  def initialize(publish_date:, multiplayer:, last_played_at:, archived: false)
    super(publish_date, archived: archived)
    @multiplayer = multiplayer
    @last_played_at = Date.parse(last_played_at)
  end

  def can_be_archived?
    super && ((Date.today - @last_played_at).to_i / 365.00) > 2.00
  end
end
