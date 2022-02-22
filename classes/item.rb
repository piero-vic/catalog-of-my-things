require 'date'

class Item
  attr_reader :publish_date, :genre, :author, :label

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

  def genre=(genre)
    @genre = genre
    genre.items.push(self) unless genre.items.include?(genre)
  end

  def author=(author)
    @author = author
    author.items.push(self) unless author.items.include?(author)
  end

  def label=(label)
    @label = label
    label.items.push(self) unless label.items.include?(label)
  end
end
