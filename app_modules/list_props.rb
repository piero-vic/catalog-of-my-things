module ListProps
  def list_genres
    puts 'Genres'
    @item_props.grep(Genre).each_with_index do |prop, index|
      puts "#{index + 1}) #{prop.name.capitalize}"
    end
    puts
  end

  def list_labels
    puts 'Labels'
    @item_props.grep(Label).each_with_index do |prop, index|
      puts "#{index + 1}) #{prop.title.capitalize} - #{prop.color.capitalize}"
    end
    puts
  end

  def list_authors
    puts 'Authors:'
    @item_props.grep(Author).each_with_index do |prop, index|
      puts "#{index + 1}) #{prop.first_name.capitalize} #{prop.last_name.capitalize}"
    end
    puts
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
      list_authors
    when 4
      list_games
    end
  end
end
