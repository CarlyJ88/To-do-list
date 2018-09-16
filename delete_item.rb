def if_a_number(delete_this)

  delete_this =~ /^\d+$/

end

def delete_item(items)
  
  require_relative 'list_to_do'
  puts "Please state the number of the item you would like to delete from the list below."

   loop do
   list_to_do(items)
   delete_this = $stdin.gets.chomp

     if if_a_number(delete_this)
       delete_this = delete_this.to_i
       items.delete_at(delete_this)
       list_to_do(items)

       break
       else

        puts "Please enter the number of the item you would like to delete again."
    end
  end

end
