# find sqrt

# 1 6 9  - d = 0
# 2 4 7  - d > 0
# 2 4 -7 - d < 0

# надо подключить модуль ?
#include Math  

puts " Программа вычисляет корни квадратного уравнения"
puts " Введите коэффициент a"
a = gets.chomp.to_f
#a = textA.to_f

puts " Введите коэффициент b"
b = gets.chomp.to_f
#b = textB.to_f

puts " Введите коэффициент c"
c = gets.chomp.to_f
#c = textC.to_f

# вычисляем дискриминант
d = b ** 2 - 4 * a * c

if d < 0 
  puts " корней нет"

elsif d == 0
  puts " уравнение имеет одно решение x = #{(b * (-1) - Math.sqrt(d)) / (2 * a)}"
elsif d > 0
  puts " корень x1 = #{(b * (-1) - Math.sqrt(d)) / (2 * a)}"
  puts " корень x2 = #{(b * (-1) + Math.sqrt(d)) / (2 * a)}"
end
