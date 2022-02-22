class App
  def initialize
    @items = []
  end

  def run
    print "Welcome to the catalog of things\n\n"
    loop do
      puts '[1] Add new Item'
      puts '[2] List Items'
      puts '[3] List Properties'
      puts '[4] Exit'
      user_input = gets.chomp.to_i
      case user_input
      when 1
        puts 'Add new Item'
      when 2
        puts 'List Items'
      when 3
        puts 'List Properties'
      else
        break
      end
    end
  end
end
