module ReadData
  def load_data(file)
    JSON.parse(File.read(file)) if File.exist?(file) && File.size(file).positive?
  end

  def load_genres
    load_data('./data/genres.json')&.each { |prop| @item_props.push(Genre.new(prop['name'], prop['id'])) }
  end

  def load_labels
    load_data('./data/labels.json')&.each do |prop|
      @item_props.push(Label.new(prop['title'], prop['color'], prop['id']))
    end
  end

  def load_sources
    load_data('./data/sources.json')&.each { |prop| @item_props.push(Source.new(prop['name'], prop['id'])) }
  end

  def load_authors
    load_data('./data/authors.json')&.each do |prop|
      @item_props.push(Author.new(prop['first_name'], prop['last_name'], prop['id']))
    end
  end

  def set_item_props(obj, item)
    obj.author = @item_props.select { |prop| prop.id == item['author'] }[0]
    obj.genre = @item_props.select { |prop| prop.id == item['genre'] }[0]
    obj.label = @item_props.select { |prop| prop.id == item['label'] }[0]
    obj.source = @item_props.select { |prop| prop.id == item['source'] }[0]
  end

  def load_books
    load_data('./data/books.json')&.each do |item|
      book = Book.new(item['publisher'], item['cover_state'], item['publish_date'], archived: item['archived'])
      set_item_props(book, item)
      @items << book
    end
  end

  def load_games
    load_data('./data/games.json')&.each do |item|
      game = Game.new(multiplayer: item['multiplayer'], last_played_at: item['last_played_at'],
                      publish_date: item['publish_date'], archived: item['archived'])
      set_item_props(game, item)
      @items << game
    end
  end

  def load_music_albums
    load_data('./data/music_albums.json')&.each do |item|
      music_album = MusicAlbum.new(item['publish_date'], on_spotify: item['on_spotify'],
                                   archived: item['archived'])
      set_item_props(music_album, item)
      @items << music_album
    end
  end

  def load_movies
    load_data('./data/movies.json')&.each do |item|
      movie = Movie.new(item['publish_date'], silent: item['silent'], archived: item['archived'])
      set_item_props(movie, item)
      @items << movie
    end
  end

  def load_all_data
    load_genres
    load_labels
    load_sources
    load_authors

    load_books
    load_games
    load_movies
    load_music_albums
  end
end
