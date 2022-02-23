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

  def load_books
    load_data('./data/books.json')&.each do |item|
      book = Book.new(item['publisher'], item['cover_state'], item['publish_date'])
      book.author = @item_props.select { |prop| prop.id == item['author'] }[0]
    end
  end
end
