#сдано
# area triangle from formula 1/2*a*h

puts "Введите высоту треугольника в сантиметрах"
trweigth = gets.chomp
puts "Введите основание треугольника в сантиметрах"
trbase = gets.chomp
puts "Площадь треугольника будет равна #{ 0.5 * trweigth.to_f * trbase.to_f } см"
