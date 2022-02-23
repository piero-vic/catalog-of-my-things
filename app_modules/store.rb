require 'json'

module Store
  def store_books()
    books_data = @items.grep(Book).map do |item|
      { publisher: item.publisher, cover_state: item.cover_state, publish_date: item.publish_date,
        archived: item.archived, genre: item.genre.id, author: item.author.id, label: item.label.id,
        source: item.source.id }
    end
    File.write('./data/books.json', JSON.dump(books_data))
  end
end
