class Item
  attr_reader :publish_date

  def initialize(publish_date, archived: false)
    @id = Random.rand(1..10_000)
    @publish_date = publish_date
    @archived = archived
  end
end
