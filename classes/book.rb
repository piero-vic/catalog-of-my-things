require_relative './item'

class Book < Item
  def initialize(publisher, cover_state, publish_date, archived: false)
    super(publish_date, archived: archived)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?()
    return true if @cover_state == 'bad'

    Item.instance_method(:can_be_archived?).bind(self).call
  end
end
