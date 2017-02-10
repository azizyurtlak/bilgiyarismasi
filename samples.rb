isimler = ['Ali', 'Aziz', 'Fatma', 'Eli', 'Elmas']

isimler.each_with_index do |element, index|
  puts "#{index + 1} - #{element}"
end
