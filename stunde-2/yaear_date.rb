# include days in year

puts "введите год числом, пример - 1999"
year = gets.chomp.to_i

puts "введите месяц числом, пример - 12"
monts = gets.chomp.to_i

puts "введите число месяца, (пример) 31"
day = gets.chomp.to_i

# item year

month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
days = 0
ind = 0

if monts < 13
  while ind < monts
    days += month[ind]
    if ind == 1 && year % 4 == 0
      days += 1
    end
    ind += 1
  end
end

puts "сейчас прошло #{days + day} дней"


# код начал с такой конструкции - gets year.chomp.to_i