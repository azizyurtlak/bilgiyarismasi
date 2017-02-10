require 'json'

file = File.read('questions.json')
data = JSON.parse(file)

puts 'Bilgi yarismasina hosgeldiniz'
puts 'Baslamak icin entera basin.'
gets

continue = true
question_count = 1

while(continue) do
  item = data.sample
  puts "#{question_count}. Soru: #{item['question']}"

  item['answers'].each_with_index do |answer, index|
    if index == 0
      choice = 'A'
    elsif index == 1
      choice = 'B'
    elsif index == 2
      choice = 'C'
    else
      choice = 'D'
    end

    puts "#{choice} - #{answer}"
  end

  puts "Yanitiniz nedir?"
  answer = gets.chomp

  if answer == 'A'
    index = 0
  elsif answer == 'B'
    index = 1
  elsif answer == 'C'
    index = 2
  else
    index = 3
  end

  if index == item['correct']
    question_count = question_count + 1
    puts 'Dogru cevap!'
    puts 'Sonraki soruya gecmek icin entera basin'
    gets
  else
    puts 'Yanlis Cevap'
    continue = false
  end
end
