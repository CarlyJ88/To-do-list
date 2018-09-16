def add_item(items)
  
  require_relative 'write_file'
  puts "Please enter the item you would like to add to the list below."
  item = $stdin.gets.chomp
  items.push(item)
  write_file(items, "items.txt")

end
