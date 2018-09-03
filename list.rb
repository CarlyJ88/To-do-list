def if_a_number(delete_this)
  delete_this =~ /^\d+$/
end

def list_to_do(to_do)
  puts "\nI need to: "
  to_do.each_with_index do |x, index|
    puts "#{index}: #{x}"
  end
  puts ""
end

def add_item(to_do)
  puts "Please enter the item you would like to add to the list below."
  item = $stdin.gets.chomp
  to_do.push(item)
end

def delete_item(to_do)
  puts "Please state the number of the item you would like to delete from the list below."

  loop do
    list_to_do(to_do)
    delete_this = $stdin.gets.chomp

     if if_a_number(delete_this)
       delete_this = delete_this.to_i
       to_do.delete_at(delete_this)
       list_to_do(to_do)
       break
    else
      puts "Please enter the number of the item you would like to delete again."
    end
  end
end

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
  puts "Press 4 to exit the program"
  puts "Press any other number if you would like to repeat the list"
  puts ">"
  $stdin.gets.chomp.to_i
end

def choice
  to_do = ["Write CV", "update LinkedIn profile", "Buy another Olbas oil nasal stick", "Find a job in London", "Complete to-do list console application"]

  loop do
    number = select_item

    if number == 1
      list_to_do(to_do)
    elsif number == 2
      add_item(to_do)
    elsif number == 3
      delete_item(to_do)
    elsif number == 4
      bye
    end
  end
end

choice
