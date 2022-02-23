require_relative './classes/book'
require_relative './classes/movie'
require_relative './classes/music_album'
require_relative './classes/game'
require_relative './app_modules/add_item'
require_relative './app_modules/list_items'

class App
  include AddItem
  include ListItems
  def initialize
    @items = []
  end

  def run
    print "Welcome to the catalog of things\n\n"
    loop do
      puts <<~HEREDOC
        [1] Add new Item
        [2] List Items
        [3] List Properties
        [4] Exit
      HEREDOC
      user_input = gets.chomp.to_i
      case user_input
      when 1
        add_new_item
      when 2
        list_items
      when 3
        puts 'List Properties'
      else
        break
      end
    end
  end
end