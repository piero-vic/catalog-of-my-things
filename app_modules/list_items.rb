module ListItem
  def list_book
    @items.grep(Book).each do |book|
      puts "Publisher: #{book.publisher}"
      print "Cover State: #{book.cover_state}\n\n"
    end
  end
end
