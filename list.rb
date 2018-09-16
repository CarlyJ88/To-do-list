def bye

  puts "Are you sure?"
  user = $stdin.gets.chomp.downcase

  if user == "yes"

    puts "Bye, for now."
    exit(0)

  end
end

def select_item

  puts "\nPress 1 to print the list"
  puts "Press 2 to add a new item to the list"
  puts "Press 3 to delete an element from the list"
  puts "Press 4 if you would like to see a preview of a list"
  puts "Press 5 to exit the program"
  puts "Press any other number if you would like to repeat the list"
  puts ">"
  $stdin.gets.chomp.to_i

end

def choice

  items = []
  file = File.open("items.txt")
  file.each do |x|
    items.push(x)
  end

  loop do

    number = select_item

    if number == 1
      require_relative 'list_to_do'
      list_to_do(items)

      elsif number == 2
      require_relative 'add_item'
      add_item(items)

    elsif number == 3
      require_relative 'delete_item'
      delete_item(items)

    elsif number == 4
      require_relative 'write_file'
      write_file(items, "items.txt")

    elsif number == 5
      bye

    end
  end
end

choice
