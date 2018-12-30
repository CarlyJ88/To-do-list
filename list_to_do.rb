def list_to_do(items)
  items.each_with_index do |line, index|
    puts "#{index}: #{line}"
  end
  puts ''
end
