module ListProps
  def list_genres
    @item_props.grep(Genre).each_with_index do |prop, index|
      print "#{index + 1}) #{prop.name.capitalize}\n\n"
    end
  end

  def list_labels
    @item_props.grep(Label).each_with_index do |prop, index|
      print "#{index + 1}) #{prop.title.capitalize} - #{prop.color.capitalize}\n\n"
    end
  end

  def list_props
    menu = <<~HEREDOC
      [1] List all genres
      [2] List all labels
      [3] List all authors
      [4] List all sources
      [5] Return to main menu
    HEREDOC
    puts menu
    user_input = gets.chomp.to_i
    case user_input
    when 1
      list_genres
    when 2
      list_labels
    when 3
      list_movies
    when 4
      list_games
    end
  end
end
