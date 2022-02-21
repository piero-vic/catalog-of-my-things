require 'date'

class Item
  attr_reader :publish_date

  def initialize(publish_date, archived: false)
    @id = Random.rand(1..10_000)
    @publish_date = Date.parse(publish_date)
    @archived = archived
  end

  def can_be_archived?
    return true if DateTime.now - @publish_date > 10

    false
  end
end
