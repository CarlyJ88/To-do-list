def list_to_do(to_do)
  puts "I need to: "
  to_do.each_with_index do |x, index|
    puts "#{index}: #{x}"
  end
end

def add_item(to_do)
  puts "Please enter the item you would like to add to the list below."
  item = $stdin.gets.chomp
  to_do.push(item)
end

def delete_item(to_do)
  puts "Are you sure you would like to delete this?"
end

def bye
  puts "Bye, for now."
end


def select_item
  puts "Press 1 to print the list"
  puts "Press 2 to add a new item to the list"
  puts "Press 3 to delete an element from the list"
  puts "Press 4 to exit the program"
  puts "Press any other number if you would like to repeat the list"
  puts ">"
  $stdin.gets.chomp
end

def choice
  to_do = ["Write CV", "update LinkedIn profile", "Buy another Olbas oil nasal stick", "Find a job in London", "Complete to-do list console application"]

  loop do
    number = select_item

    if number == "1"
      list_to_do(to_do)
    elsif number == "2"
      add_item(to_do)
    elsif number == "3"
      delete_item(to_do)
    elsif number == "4"
      bye
    end
    break if number=="4"
  end
end

choice
