require_relative 'item'
class Genre
  attr_reader :name, :items, :id

  def initialize(name, id = Random.rand(1..10_000))
    @id = id
    @name = name
    @items = []
  end

  def add_item(item)
    @items.push(item)
    item.genre = self
  end
end
