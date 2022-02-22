require_relative 'item'

class Movie < Item
  attr_reader :silent
  attr_accessor :archive, :publish_date

  def initialize(publish_date, silent: false, archived: false)
    super(publish_date, archived: archived)
    @silent = silent
  end

  def can_be_archived?
    return true if super || @silent
  end
end
