require_relative 'item'
require 'date'

class Movie < Item
  attr_accessor :archive, :publish_date, :silent

  def initialize(publish_date, silent: false, archived: false)
    super(publish_date, archived: archived)
    @silent = silent
  end

  def can_be_archived?
    super || @silent
  end
end
