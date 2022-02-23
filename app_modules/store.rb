require 'json'

module Store
  # Strore Items

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

  # Store Props

  def store_genres
    data = @item_props.grep(Genre).map do |prop|
      { id: prop.id, name: prop.name }
    end
    File.write('./data/genres.json', JSON.dump(data))
  end

  def store_labels
    data = @item_props.grep(Label).map do |prop|
      { id: prop.id, title: prop.title, color: prop.color }
    end
    File.write('./data/labels.json', JSON.dump(data))
  end

  def store_authors
    data = @item_props.grep(Author).map do |prop|
      { id: prop.id, first_name: prop.first_name, last_name: prop.last_name }
    end
    File.write('./data/authors.json', JSON.dump(data))
  end

  def store_sources
    data = @item_props.grep(Source).map do |prop|
      { id: prop.id, name: prop.name }
    end
    File.write('./data/sources.json', JSON.dump(data))
  end

end
