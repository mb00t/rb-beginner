#programm optimal weigth from ugrowth data

puts "Приветствую. Введите свое имя"
uname = gets.chomp
puts "#{ uname }, сообщите свой рост в сантиметрах"
ugrowth = gets.chomp

if ugrowth.to_i - 110 <= 0
  puts "#{uname}, ваш вес уже оптимальный"
else
  puts "#{ uname }, ваш оптимальный вес должен составлять #{ ugrowth.to_i - 110 } кг"
end
