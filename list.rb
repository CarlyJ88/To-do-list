require_relative 'list_to_do'
require_relative 'add_item'
require_relative 'delete_item'
require_relative 'write_file'

def bye
  puts 'Are you sure?'
  user = $stdin.gets.chomp.downcase

  return unless user == 'yes'

  puts 'Bye for now'
  exit(0)
end

def select_item
  puts "\nPress 1 to print the list"
  puts 'Press 2 to add a new item to the list'
  puts 'Press 3 to delete an element from the list'
  puts 'Press 4 to exit the program'
  puts 'Press any other number if you would like to repeat the list'
  puts '>'
  $stdin.gets.chomp.to_i
end

def initialize_items
  items = []
  file = File.open('items.txt')
  file.each do |x|
    items.push(x)
  end
  items
end

@menu = {
  1 => ->(items) { write_file(items,'items.txt') },
  2 => ->(items) { add_item(items) },
  3 => ->(items) { delete_item(items) }
}

def choice
  items = initialize_items
  loop do
    number = select_item
    @menu[number].call(items) if number > 0 && number < 4
    bye if number == 4
  end
end

choice
