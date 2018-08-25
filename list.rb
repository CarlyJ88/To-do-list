
def list_to_do
  puts "Here are the lists"
end

def add_item
  puts "Would you like to add an item to your list now?"
end

def delete_item
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


puts "> "

number = $stdin.gets.chomp
end

def choice
  loop do
  number = select_item

if number == "1"
  list_to_do
elsif number == "2"
    add_item
  elsif number == "3"
      delete_item
    elsif number == "4"
      bye
    end
    break if number=="4"
end
end

choice
