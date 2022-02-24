require_relative './classes/book'
require_relative './classes/movie'
require_relative './classes/music_album'
require_relative './classes/game'

require_relative './classes/genre'
require_relative './classes/label'
require_relative './classes/author'
require_relative './classes/source'

require_relative './app_modules/add_item'
require_relative './app_modules/list_items'
require_relative './app_modules/add_props'
require_relative './app_modules/list_props'

require_relative './app_modules/store'
require_relative './app_modules/read_data'

class App
  include AddItem
  include ListItems
  include AddProps
  include ListProps
  include Store
  include ReadData

  def initialize
    @items = []
    @item_props = []
  end

  def run
    load_all_data
    print "Welcome to the catalog of things\n\n"
    loop do
      print "[1] Add new Item\n[2] List Items\n[3] List Properties\n[4] Exit\n"
      user_input = gets.chomp.to_i
      case user_input
      when 1
        add_new_item
      when 2
        list_items
      when 3
        list_props
      else
        break
      end
    end
    store_all_data
  end
end
