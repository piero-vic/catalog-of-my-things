module AddProps
  def add_item_props(item)
    add_genre(item)
    add_label(item)
    add_author(item)
    add_source(item)
  end

  def add_genre(item)
    print "\nEnter genre: "
    genre_name = gets.chomp.downcase
    item.genre = @item_props.grep(Genre).select do |prop|
                   prop.name == genre_name
                 end [0] || Genre.new(genre_name)
    @item_props.push(item.genre) unless @item_props.include?(item.genre)
  end

  def add_label(item)
    print "\nEnter label title: "
    label_title = gets.chomp.downcase
    print "\nEnter color: "
    label_color = gets.chomp.downcase
    item.label = @item_props.grep(Label).select do |prop|
                   prop.title == label_title && prop.color == label_color
                 end [0] || Label.new(label_title, label_color)
    @item_props.push(item.label) unless @item_props.include?(item.label)
  end

  def add_author(item)
    print "\nEnter author's fullname: "
    first_name, last_name = gets.chomp.downcase.split
    item.author = @item_props.grep(Author).select do |prop|
                    prop.first_name == first_name && prop.last_name == last_name
                  end [0] || Author.new(first_name, last_name)
    @item_props.push(item.author) unless @item_props.include?(item.author)
  end

  def add_source(item)
    print "\nEnter source: "
    source_name = gets.chomp.downcase
    item.source = @item_props.grep(Source).select do |prop|
                    prop.name == source_name
                  end [0] || Source.new(source_name)
    @item_props.push(item.source) unless @item_props.include?(item.source)
  end
end
