require 'json'

module Store
  def store_books
    data = @items.grep(Book).map do |item|
      { publisher: item.publisher, cover_state: item.cover_state, publish_date: item.publish_date,
        archived: item.archived, genre: item.genre.id, author: item.author.id, label: item.label.id,
        source: item.source.id }
    end
    File.write('./data/books.json', JSON.dump(data))
  end

  def store_movies
    data = @items.grep(Movie).map do |item|
      { silent: item.silent, publish_date: item.publish_date,
        archived: item.archived, genre: item.genre.id, author: item.author.id, label: item.label.id,
        source: item.source.id }
    end
    File.write('./data/movies.json', JSON.dump(data))
  end

  def store_music_albums
    data = @items.grep(MusicAlbum).map do |item|
      { on_spotify: item.on_spotify, publish_date: item.publish_date,
        archived: item.archived, genre: item.genre.id, author: item.author.id, label: item.label.id,
        source: item.source.id }
    end
    File.write('./data/music_albums.json', JSON.dump(data))
  end

  def store_games
    data = @items.grep(Game).map do |item|
      { multiplayer: item.multiplayer, last_played_at: item.last_played_at, publish_date: item.publish_date,
        archived: item.archived, genre: item.genre.id, author: item.author.id, label: item.label.id,
        source: item.source.id }
    end
    File.write('./data/games.json', JSON.dump(data))
  end
end
