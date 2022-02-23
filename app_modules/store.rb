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

  def store_movies()
    movies_data = @items.grep(Movie).map do |item|
      { silent: item.silent, publish_date: item.publish_date,
        archived: item.archived, genre: item.genre.id, author: item.author.id, label: item.label.id,
        source: item.source.id }
    end
    File.write('./data/movies.json', JSON.dump(movies_data))
  end

  def store_music_albums()
    music_album_data = @items.grep(MusicAlbum).map do |item|
      { on_spotify: item.on_spotify, publish_date: item.publish_date,
        archived: item.archived, genre: item.genre.id, author: item.author.id, label: item.label.id,
        source: item.source.id }
    end
    File.write('./data/music_albums.json', JSON.dump(music_album_data))
  end
end
