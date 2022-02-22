require_relative 'item'

class Source

    attr_reader :id, :name, :items

    def initialize(name)
        @id = Random.rand(1..10_000)
        @name = name
        @items = []
    end

end