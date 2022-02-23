module ListItems
  def list_books
    @items.grep(Book).each do |book|
      puts "Publisher: #{book.publisher}"
      print "Cover State: #{book.cover_state}\n\n"
    end
  end

  def list_games
    @items.grep(Game).each do |game|
      puts "Multiplayer: #{game.multiplayer ? 'yes' : 'no'}"
      print "Last time played: #{game.last_played_at}\n\n"
    end
  end

  def list_movies
    @items.grep(Movie).each do |movie|
      print "Silent: #{movie.silent ? 'yes' : 'no'}\n\n"
    end
  end

  def list_music_albums
    @items.grep(MusicAlbum).each do |album|
      print "Is it on Spotify?: #{album.on_spotify ? 'yes' : 'no'}\n\n"
    end
  end

  def list_items
    menu = <<~HEREDOC
      [1] List a book
      [2] List a music album
      [3] List a movie
      [4] List a game
      [5] Return to main menu
    HEREDOC
    puts menu
    user_input = gets.chomp.to_i
    case user_input
    when 1
      list_books
    when 2
      list_games
    when 3
      list_movies
    when 4
      list_music_albums
    end
  end
end
