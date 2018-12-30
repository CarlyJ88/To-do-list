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
  file.each do |read_one_line_in_file|
    items.push(read_one_line_in_file.strip)
  end
  items
end

def choice
  items = initialize_items
  loop do
    number = select_item
    write_file(items, 'items.txt') if number == 1
    add_item(items) if number == 2
    delete_item(items) if number == 3
    bye if number == 4
  end
end

choice
