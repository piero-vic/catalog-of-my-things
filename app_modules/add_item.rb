module AddItem
  def add_book
    print "\nEnter publisher: "
    publisher = gets.chomp
    print "\nEnter cover state: "
    cover_state = gets.chomp
    print "\nEnter publishing date: "
    publish_date = gets.chomp

    book = Book.new(publisher, cover_state, publish_date)
    add_author(book)
    @items.push(book)
  end

  def add_album
    print "\nEnter publishing date: "
    publish_date = gets.chomp
    print "\nIs it on spotify?  y/n "
    spotify = gets.chomp.downcase
    spotify = true if spotify == 'y'
    spotify = false if spotify == 'n'
    @items.push(MusicAlbum.new(publish_date, on_spotify: spotify))
  end

  def add_movie
    print "\nEnter publishing date: "
    publish_date = gets.chomp
    print "\nIs it silent?  y/n "
    silent = gets.chomp.downcase
    silent = true if silent == 'y'
    silent = false if silent == 'n'
    @items.push(Movie.new(publish_date, silent: silent))
  end

  def add_game
    print "\nEnter publishing date: "
    publish_date = gets.chomp
    print "\nIs it multiplayer?  y/n "
    multiplayer = gets.chomp.downcase
    multiplayer = true if multiplayer == 'y'
    multiplayer = false if multiplayer == 'n'
    print "\nEnter date of last play: "
    last_played_at = gets.chomp
    @items.push(Game.new(publish_date: publish_date, multiplayer: multiplayer, last_played_at: last_played_at))
  end

  def add_new_item
    menu = <<~HEREDOC
      [1] Add a book
      [2] Add a music album
      [3] Add a movie
      [4] Add a game
      [5] Return to main menu
    HEREDOC
    puts menu
    user_input = gets.chomp.to_i
    case user_input
    when 1
      add_book
    when 2
      add_album
    when 3
      add_movie
    when 4
      add_game
    end
  end
end
