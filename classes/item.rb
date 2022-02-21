require 'date'

class Item
  attr_reader :publish_date

  def initialize(publish_date, archived: false)
    @id = Random.rand(1..10_000)
    @publish_date = Date.parse(publish_date)
    @archived = archived
  end

  def can_be_archived?
    ((Date.today - @publish_date).to_i / 365.00) > 10.00
  end

  def move_to_archive
    @archived = can_be_archived?
  end
end
# item = Item.new('2007-12-04')
# item.move_to_archive
