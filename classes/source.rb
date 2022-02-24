require_relative './item'

class Source
  attr_reader :id, :name, :items

  def initialize(name, id = Random.rand(1..10_000))
    @id = id
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    item.source = self
  end
end
