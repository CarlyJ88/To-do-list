require_relative 'list_to_do'

def if_a_number(delete_this)
  delete_this =~ /^\d+$/
end

def delete_something(items, delete_this)
  delete_this = delete_this.to_i
  items.delete_at(delete_this)
  list_to_do(items)
end

def delete_item(items)
  delete_this = nil
  loop do
    puts 'Please state the number of the item you would like to delete from' \
      ' the list below.'
    list_to_do(items)
    delete_this = $stdin.gets.chomp
    break if if_a_number(delete_this)
  end
  delete_something(items, delete_this)
end
