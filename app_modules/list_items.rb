module ListItems
  def print_item_props(item)
    puts "Publish date: #{item.publish_date}"
    puts "Genre: #{item.genre.name&.capitalize}"
    puts "Label: #{item.label.title&.capitalize} color: #{item.label.color&.capitalize}"
    puts "Author: #{item.author.first_name&.capitalize} #{item.author.last_name&.capitalize}"
    puts "Source: #{item.source.name&.capitalize}"
  end

  def list_books
    @items.grep(Book).each do |book|
      print_item_props(book)
      puts "Publisher: #{book.publisher}"
      print "Cover State: #{book.cover_state}\n\n"
    end
  end

  def list_games
    @items.grep(Game).each do |game|
      print_item_props(game)
      puts "Multiplayer: #{game.multiplayer ? 'yes' : 'no'}"
      print "Last time played: #{game.last_played_at}\n\n"
    end
  end

  def list_movies
    @items.grep(Movie).each do |movie|
      print_item_props(movie)
      print "Silent: #{movie.silent ? 'yes' : 'no'}\n\n"
    end
  end

  def list_music_albums
    @items.grep(MusicAlbum).each do |album|
      print_item_props(album)
      print "Is it on Spotify?: #{album.on_spotify ? 'yes' : 'no'}\n\n"
    end
  end

  def list_items
    menu = <<~HEREDOC
      [1] List all books
      [2] List all music albums
      [3] List all movies
      [4] List all games
      [5] Return to main menu
    HEREDOC
    puts menu
    user_input = gets.chomp.to_i
    case user_input
    when 1
      list_books
    when 2
      list_music_albums
    when 3
      list_movies
    when 4
      list_games
    end
  end
end
