module AddProps
  def add_genre(item)
    print "\nEnter genre: "
    genre_name = gets.chomp.downcase
    item.genre = @item_props.select do |prop|
                   prop.name == genre_name && prop.instance_of?(Genre)
                 end [0] || Genre.new(genre_name)
    @item_props.push(item.genre) unless @item_props.include?(item.genre)
  end

  def add_label(item)
    print "\nEnter label title: "
    label_title = gets.chomp.downcase
    print "\nEnter color: "
    label_color = gets.chomp.downcase
    item.label = @item_props.select do |prop|
                   prop.title == label_title && prop.color == label_color && prop.instance_of?(Label)
                 end [0] || Label.new(label_title, label_color)
    @item_props.push(item.label) unless @item_props.include?(item.label)
  end
end
