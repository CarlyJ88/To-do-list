def write_file(items, file_name)

  file = open(file_name, 'w')

  items.each_with_index do |line, index|
    puts "#{index}: #{line}"
    file.write(line)
    #file.write("\n")

  end

  file.close

end
