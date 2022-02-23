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
end
