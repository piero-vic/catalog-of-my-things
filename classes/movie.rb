require_relative 'item'

class Movie < Item
  attr_reader :silent

  def initialize(publish_date, silent: false, archived: false)
    super(publish_date, archived: archived)
    @silent = silent
  end

  def can_be_archived?
    @silent || can_be_archived?
  end
end
