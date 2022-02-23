module AddProps
  def add_genre(item)
    print "\nEntre genre: "
    genre_name = gets.chomp.downcase
    item.genre = @item_props.select do |prop|
                   prop.name == genre_name && prop.instance_of?(Genre)
                 end [0] || Genre.new(genre_name)
    @item_props.push(item.genre) unless @item_props.include?(item.genre)
  end
end
