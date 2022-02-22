class Author
  attr_reader :first_name, :last_name, :items
  def initialize(first_name, last_name)
    @id = Random.rand(1..10000)
    @first_name = first_name
    @last_name = last_name
    @items = []
  end
end