# determine triangle type

# введем данные
puts "Введите первую длинну стороны треугольника a"
tringlA = gets.chomp
puts "Введите первую длинну стороны треугольника b"
tringlB = gets.chomp
puts "Введите первую длинну стороны треугольника c"
tringlC = gets.chomp

# преобразуем к типу с плавающей точкой
sideA = tringlA.to_f
sideB = tringlB.to_f
sideC = tringlC.to_f

# ищем гипотенузу и катеты
if sideA >= sideB and sideA >= sideC 
  gipotenuse = sideA 
  katet1 = sideB
  katet2 = sideC

elsif sideB >= sideC && sideB >= sideA
  gipotenuse = sideB
  katet1 = sideA
  katet2 = sideC

elsif sideC >= sideA && sideC >= sideA
  gipotenuse = sideC
  katet1 = sideA
  katet2 = sideB
end

# выводим свойства треугольника, если таковые имеются
if sideA = sideB || sideB = sideC
  puts " Треугольник является равнобедренным"
end

if sideA = sideB && sideB = sideC
  puts " Треугольник является равносторонним"
end

# проверяем на на наличие прямого угла
if gipotenuse ** 2 == katet1 ** 2 + katet2 ** 2
  puts " Треугольник является прямоугольным"
else
  puts " Треугольник не прямоугольный"
end

# не разобрался почему не работает конструкция ниже
#puts " Треугольник является равносторонним" if sideА = sideC && sideА = sideB && sideА = sideC
